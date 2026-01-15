$PSStyle.FileInfo.Directory = "`e[38;2;74;125;158m" # #4a7d9e

Set-PSReadLineOption -Colors @{
	InlinePrediction = "`e[38;2;106;112;117m" # #6a7075
	Operator = "`e[38;2;74;64;56m"            # #4a4038 (--, =, etc.)
	Parameter = "`e[38;2;90;84;74m"           # #5a544a (--argument)
}
