function Request-JitAccess {
    param(
        [Parameter(Mandatory)]
        [string] $VmName,

        [Parameter(Mandatory)]
        [string] $ResourceGroup,

        [Parameter(Mandatory)]
        [string] $SubscriptionId
    )

    az account set --subscription $SubscriptionId | Out-Null

    $vm = az vm show `
      -g $ResourceGroup `
      -n $VmName `
      --query "{id:id, location:location}" `
      -o json | ConvertFrom-Json

    $VM_ID    = $vm.id
    $LOCATION = $vm.location

    $MY_IP = (Invoke-RestMethod "https://ifconfig.me/ip").Trim()

    $bodyObj = @{
      virtualMachines = @(
        @{
          id    = $VM_ID
          ports = @(
            @{
              number = 22
              duration = "PT3H"
              allowedSourceAddressPrefix = $MY_IP
            }
          )
        }
      )
      justification = "SSH access"
    }

    $bodyFile = Join-Path $env:TEMP "jit-request.json"
    $bodyObj | ConvertTo-Json -Depth 10 | Set-Content -Path $bodyFile -Encoding utf8

    az rest `
      --method post `
      --uri "https://management.azure.com/subscriptions/$SubscriptionId/resourceGroups/$ResourceGroup/providers/Microsoft.Security/locations/$LOCATION/jitNetworkAccessPolicies/default/initiate?api-version=2020-01-01" `
      --body ("@" + $bodyFile)
}
