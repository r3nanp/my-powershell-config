Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Star

# Complete and history 
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
# Set-Location C:\\Users\\<Username>