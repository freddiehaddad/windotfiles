$PSStyle.FileInfo.Directory = "`e[38;2;11;85;203m" # #0b55cb - cobalt (Directory)

Set-PSReadLineOption -Colors @{
        InlinePrediction = "`e[38;2;176;164;142m" # #b0a48e - special (ghost text)
        Operator = "`e[38;2;101;109;104m"         # #656d68 - cast_iron (Operator)
        Parameter = "`e[38;2;6;102;121m"         # #066679 - patina (Type)
        Command = "`e[38;2;3;104;54m"             # #036836 - verdigris (Function)
        String = "`e[38;2;106;76;8m"              # #6a4c08 - forge_amber (String)
        Number = "`e[38;2;11;85;203m"             # #0b55cb - cobalt (@number)
        Variable = "`e[38;2;31;26;18m"            # #1f1a12 - limestone (@variable)
        Member = "`e[38;2;106;94;80m"             # #6a5e50 - tarnish (Identifier)
        Type = "`e[38;2;6;102;121m"              # #066679 - patina (Type)
        Comment = "`e[38;2;114;101;84m"           # #726554 - slag (Comment)
        Keyword = "`e[38;2;143;70;50m"            # #8f4632 - rust (Keyword)
        Error = "`e[38;2;143;70;50m"              # #8f4632 - rust (Error)
        Selection = "`e[48;2;230;212;180m"        # #e6d4b4 - alloy (Visual selection bg)
        Default = "`e[38;2;31;26;18m"             # #1f1a12 - limestone (Normal.fg)
        Emphasis = "`e[38;2;31;26;18m"            # #1f1a12 - limestone (foreground)
}
