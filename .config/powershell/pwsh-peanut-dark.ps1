$PSStyle.FileInfo.Directory = "`e[38;2;108;163;202m" # #6ca3ca

Set-PSReadLineOption -Colors @{
	InlinePrediction = "`e[38;2;87;79;77m" # #574f4d
	Operator = "`e[38;2;141;134;122m"      # #8d867a (--, =, etc.)
	Parameter = "`e[38;2;184;173;155m"     # #b8ad9b (--argument)
}
