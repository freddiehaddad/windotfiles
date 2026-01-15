$PSStyle.FileInfo.Directory = "`e[38;2;108;163;202m" # #6ca3ca

Set-PSReadLineOption -Colors @{
	InlinePrediction = "`e[38;2;98;110;114m" # #626e72
	Operator = "`e[38;2;102;90;80m"          # #665a50 (--, =, etc.)
	Parameter = "`e[38;2;197;191;176m"       # #c5bfb0 (--argument)
}
