param(
    [string] $Theme,
    [switch] $Persist
)

$themes = @("forge-dark", "forge-light", "steel-dark", "steel-light", "graphite-dark", "graphite-light")
if ([string]::IsNullOrWhiteSpace($Theme)) {
    $Theme = if ($env:FERRIC_THEME) { $env:FERRIC_THEME } else { "steel-dark" }
}
if ($Theme -notin $themes) {
    throw "Unknown Ferric theme '$Theme'. Expected one of: $($themes -join ', ')"
}

$env:FERRIC_THEME = $Theme
$env:BAT_THEME = "ferric-$Theme"
$env:STARSHIP_CONFIG = Join-Path $env:USERPROFILE ".config\starship\starship-ferric-$Theme.toml"
$env:GLAZEWM_CONFIG_PATH = Join-Path $env:USERPROFILE ".config\glazewm\config-ferric-$Theme.yaml"

if ($Persist) {
    [Environment]::SetEnvironmentVariable("FERRIC_THEME", $env:FERRIC_THEME, "User")
    [Environment]::SetEnvironmentVariable("BAT_THEME", $env:BAT_THEME, "User")
    [Environment]::SetEnvironmentVariable("STARSHIP_CONFIG", $env:STARSHIP_CONFIG, "User")
    [Environment]::SetEnvironmentVariable("GLAZEWM_CONFIG_PATH", $env:GLAZEWM_CONFIG_PATH, "User")
}

. (Join-Path $PSScriptRoot "ferric-fzf-$Theme.ps1")
. (Join-Path $PSScriptRoot "ferric-pwsh-$Theme.ps1")
