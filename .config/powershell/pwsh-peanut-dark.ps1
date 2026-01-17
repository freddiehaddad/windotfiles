$PSStyle.FileInfo.Directory = "`e[38;2;184;95;204m" # #b85fcc - code[2] (types & functions)

Set-PSReadLineOption -Colors @{
	InlinePrediction = "`e[38;2;66;79;95m"  # #424f5f - ui.fg[2] (darker fg)
	Operator = "`e[38;2;157;163;166m"       # #9da3a6 - code[4] (base foreground)
	Parameter = "`e[38;2;184;95;204m"       # #b85fcc - code[2] (types & functions)
	Command = "`e[38;2;0;153;204m"          # #0099cc - code[1] (keywords)
	String = "`e[38;2;167;165;156m"         # #a7a59c - code[5] (emphasized)
	Number = "`e[38;2;167;165;156m"         # #a7a59c - code[5] (emphasized)
	Variable = "`e[38;2;157;163;166m"       # #9da3a6 - code[4] (base foreground)
	Member = "`e[38;2;157;163;166m"         # #9da3a6 - code[4] (base foreground)
	Type = "`e[38;2;184;95;204m"            # #b85fcc - code[2] (types & functions)
	Comment = "`e[38;2;77;85;94m"           # #4d555e - code[3] (muted)
	Keyword = "`e[38;2;0;153;204m"          # #0099cc - code[1] (keywords)
	Error = "`e[38;2;255;92;128m"           # #ff5c80 - msg[1] (error)
	Selection = "`e[48;2;61;79;26m"         # #3d4f1a - search.bg[3] (selection bg)
	Default = "`e[38;2;78;94;113m"          # #4e5e71 - ui.fg[3] (normal fg)
	Emphasis = "`e[38;2;120;138;161m"       # #788aa1 - ui.fg[5] (brighter fg)
}
