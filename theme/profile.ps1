Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Star

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineOption -HistorySearchCursorMovesToEnd

Set-PSReadlineOption -ShowToolTips
Set-PSReadlineOption -PredictionSource History

Import-Module Get-ChildItemColor

if (-Not (Test-Path Variable:PSise)) {
  Import-Module Get-ChildItemColor

  Set-Alias l Get-ChildItem -option AllScope
  Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
