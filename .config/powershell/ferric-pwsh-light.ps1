$PSStyle.FileInfo.Directory = "`e[38;2;58;90;140m" # #3a5a8c - cobalt (Directory)
 
Set-PSReadLineOption -Colors @{
	InlinePrediction = "`e[38;2;176;164;142m" # #b0a48e - special (ghost text)
	Operator = "`e[38;2;122;132;126m"         # #7a847e - cast_iron (Operator)
	Parameter = "`e[38;2;138;74;28m"          # #8a4a1c - copper (Type/Special)
	Command = "`e[38;2;28;84;64m"             # #1c5440 - verdigris (Function)
	String = "`e[38;2;106;76;8m"              # #6a4c08 - forge_amber (String)
	Number = "`e[38;2;58;90;140m"             # #3a5a8c - cobalt (@number)
	Variable = "`e[38;2;31;26;18m"            # #1f1a12 - limestone (@variable)
	Member = "`e[38;2;106;94;80m"             # #6a5e50 - tarnish (Identifier)
	Type = "`e[38;2;138;74;28m"               # #8a4a1c - copper (Type)
	Comment = "`e[38;2;134;122;106m"          # #867a6a - slag (Comment)
	Keyword = "`e[38;2;168;56;28m"            # #a8381c - rust (Keyword)
	Error = "`e[38;2;168;56;28m"              # #a8381c - rust (Error)
	Selection = "`e[48;2;240;212;168m"        # #f0d4a8 - alloy (Visual selection bg)
	Default = "`e[38;2;106;94;80m"            # #6a5e50 - tarnish (Identifier)
	Emphasis = "`e[38;2;31;26;18m"            # #1f1a12 - limestone (foreground)
}
