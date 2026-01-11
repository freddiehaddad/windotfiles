$PSStyle.FileInfo.Directory = "`e[38;2;74;125;158m" # #4a7d9e

Set-PSReadLineOption -Colors @{
	InlinePrediction = "`e[38;2;141;134;121m" # #8d8679
	Operator = "`e[38;2;138;131;121m"         # #8a8379 (--, =, etc.)
	Parameter = "`e[38;2;92;86;77m"           # #5c564d (--argument)
}
