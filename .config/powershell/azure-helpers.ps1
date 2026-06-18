# Powershell script to handle JIT requests from the CLI.
#
# Subscription defaults to  xperflabs , port to  22
#
# Examples:
#
# Request-JitAccess -VMName dz-client0 -ResourceGroup TachyonLanceDB
# Request-JitAccess dz-client0 TachyonLanceDB
#
# Overrides when you need them:
#
# Request-JitAccess dz-client0 TachyonLanceDB -Port 3389 -DurationHours 6
# Request-JitAccess myvm OtherRG -Subscription someOtherFriendlyName -SourceAddress 10.0.0.5/32

function Request-JitAccess {
	[CmdletBinding(SupportsShouldProcess)]
	param(
		[Parameter(Mandatory, Position = 0)]
		[string]$VMName,

		[Parameter(Mandatory, Position = 1)]
		[Alias('rg', 'ResourceGroup')]
		[string]$ResourceGroupName,

		[int[]]$Port = 22,

		[string]$Subscription = 'xperflabs',

		[string]$TenantId,

		[ValidateRange(1, 24)]
		[int]$DurationHours = 3,

		[string]$SourceAddress
	)

	# Friendly name -> subscription Id (+ optional Tenant). Fill Tenant to fully
	# avoid the cross-tenant token prompt; leave it blank to just silence it.
	$SubscriptionMap = @{
		'xperflabs' = @{ Id = '1a58628a-3aa1-4ed2-b89d-abf073ad7c1c'; Tenant = '72f988bf-86f1-41af-91ab-2d7cd011db47' }
	}

	if ($SubscriptionMap.ContainsKey($Subscription)) {
		$subId = $SubscriptionMap[$Subscription].Id
		if (-not $TenantId) { $TenantId = $SubscriptionMap[$Subscription].Tenant }
	} else {
		$subId = $Subscription
	}

	Import-Module Az.Security -ErrorAction Stop

	$ctxSplat = @{ WarningAction = 'SilentlyContinue'; ErrorAction = 'Stop' }
	if ($TenantId) { $ctxSplat['Tenant'] = $TenantId }

	if (-not (Get-AzContext)) {
		$connectSplat = @{ ErrorAction = 'Stop' }
		if ($TenantId) { $connectSplat['Tenant'] = $TenantId }
		Connect-AzAccount @connectSplat | Out-Null
	}
	Set-AzContext -Subscription $subId @ctxSplat | Out-Null

	$vm = Get-AzVM -ResourceGroupName $ResourceGroupName -Name $VMName -ErrorAction Stop

	if (-not $SourceAddress) {
		$SourceAddress = Invoke-RestMethod -Uri 'https://api.ipify.org' -ErrorAction Stop
	}
	$endTime = (Get-Date).AddHours($DurationHours).ToUniversalTime()

	$ports = foreach ($p in $Port) {
		$o = New-Object Microsoft.Azure.Commands.Security.Models.JitNetworkAccessPolicies.PSSecurityJitNetworkAccessPolicyInitiatePort
		$o.Number                     = $p
		$o.AllowedSourceAddressPrefix = $SourceAddress
		$o.EndTimeUtc                 = $endTime
		$o
	}

	$vmRequest = New-Object Microsoft.Azure.Commands.Security.Models.JitNetworkAccessPolicies.PSSecurityJitNetworkAccessPolicyInitiateVirtualMachine
	$vmRequest.Id    = $vm.Id
	$vmRequest.Ports = @($ports)

	if ($PSCmdlet.ShouldProcess($VMName, "JIT access on port(s) $($Port -join ', ') from $SourceAddress for $DurationHours h")) {
		Start-AzJitNetworkAccessPolicy -ResourceGroupName $ResourceGroupName -Location $vm.Location -Name 'default' -VirtualMachine @($vmRequest) | Out-Null
		Write-Host "JIT requested for '$VMName' port(s) $($Port -join ', ') from $SourceAddress until $endTime UTC." -ForegroundColor Green
	}
}
