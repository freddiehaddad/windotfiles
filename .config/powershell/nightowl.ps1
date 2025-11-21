$PSStyle.FileInfo.Directory = "`e[38;2;130;170;255m" # #82aaff

Set-PSReadLineOption -Colors @{
	InlinePrediction = "`e[38;2;35;77;105m" # #234d69
	Operator = "`e[38;2;236;196;141m"      # #ecc48d (--, =, etc.)
	Parameter = "`e[38;2;99;119;119m"      # #637777 (--argument)
}
