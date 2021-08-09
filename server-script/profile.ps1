
#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
(& "D:\apps\Anaconda\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
#endregion

Set-PSReadLineOption -PredictionSource History # 设置预测文本来源为历史记录
Set-PSReadlineKeyHandler -ScriptBlock { Invoke-FuzzyHistory } -Chord "Ctrl+Y"

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete # 设置 Tab 键补全
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete # 设置 Ctrl+d 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo # 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward # 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward # 设置向下键为前向搜索历史纪录
Set-PSReadLineKeyHandler -Key "]" -Function AcceptSuggestion
Set-PSReadLineKeyHandler -Key "[" -Function AcceptNextSuggestionWord


Set-PSReadLineKeyHandler -Key "Alt+]" -Function EndOfLine
Set-PSReadLineKeyHandler -Key "Alt+[" -Function BeginningOfLine

(Get-PSReadLineOption).HistorySearchCursorMovesToEnd = $True

Set-PSReadLineOption -Colors @{
  Command            = 'Yellow'
  Number             = 'Gray'
  Member             = 'DarkGray'
  Operator           = 'DarkGray'
  Type               = 'DarkGray'
  Variable           = 'Green'
  Parameter          = 'Blue'
  ContinuationPrompt = 'DarkGray'
  Default            = 'Green'
}

# activate anaconda virtual environment
function act {
  param([string]$EnvName)
  & conda activate $EnvName
}