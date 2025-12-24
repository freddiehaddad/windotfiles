$PSStyle.FileInfo.Directory = "`e[38;2;74;125;158m" # #4a7d9e

Set-PSReadLineOption -Colors @{
	InlinePrediction = "`e[38;2;141;134;121m" # #8d8679
	Operator = "`e[38;2;139;130;118m"         # #8b8276 (--, =, etc.)
	Parameter = "`e[38;2;90;84;72m"           # #5a5448 (--argument)
}
