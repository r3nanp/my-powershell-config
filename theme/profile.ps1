# Import themes and use theme star from oh my posh
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Star

# Autocomplete and history 
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineOption -HistorySearchCursorMovesToEnd

# Autosuggestions with PSReadline
Set-PSReadlineOption -ShowToolTips
Set-PSReadlineOption -PredictionSource History