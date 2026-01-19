# Collection of fzf function

<#
.SYNOPSIS
    Fuzzy-find files and open selection in your default editor.
.DESCRIPTION
    Recursively lists files using a filter, pipes them to fzf with a bat preview, 
    and opens the selected file in nvim.
.PARAMETER Filter
    A search pattern (e.g., *.ps1) passed to Get-ChildItem. Defaults to '*'.
.EXAMPLE
    vf *.lua
#>
function Invoke-FuzzyEditor {
	param(
		[string]$Filter = "*"
	)

	# Check if the EDITOR environment variable is missing
	if ([string]::IsNullOrWhiteSpace($env:EDITOR)) {
		Write-Error "The environment variable `$env:EDITOR` is not set."
		Write-Host "Please add `$env:EDITOR = 'editor'` (i.e. nvim) to your `$PROFILE." -ForegroundColor Yellow
		return
	}

	$selection = & rg --files --glob $Filter | fzf --height 100% --preview "bat -n --color always {}"

	if ($selection) {
		& $env:EDITOR $selection
	}
}

Set-Alias -Name vfe -Value Invoke-FuzzyEditor
