$PSStyle.FileInfo.Directory = "`e[38;2;108;163;202m" # #6ca3ca

Set-PSReadLineOption -Colors @{
	InlinePrediction = "`e[38;2;87;79;77m" # #574f4d
	Operator = "`e[38;2;138;128;120m"      # #8a8078 (--, =, etc.)
	Parameter = "`e[38;2;181;175;161m"     # #b5afa1 (--argument)
}
