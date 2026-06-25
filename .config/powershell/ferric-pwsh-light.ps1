$PSStyle.FileInfo.Directory = "`e[38;2;30;93;156m" # #1e5d9c - cobalt (Directory)

Set-PSReadLineOption -Colors @{
        InlinePrediction = "`e[38;2;176;164;142m" # #b0a48e - special (ghost text)
        Operator = "`e[38;2;114;101;84m"          # #726554 - slag (Operator)
        Parameter = "`e[38;2;55;84;73m"         # #375449 - cast_iron (Parameter)
        Command = "`e[38;2;30;93;156m"             # #1e5d9c - cobalt (Function)
        String = "`e[38;2;0;124;72m"              # #007c48 - verdigris (String)
        Number = "`e[38;2;147;74;0m"             # #934a00 - ember (@number)
        Variable = "`e[38;2;31;26;18m"            # #1f1a12 - limestone (@variable)
        Member = "`e[38;2;31;26;18m"             # #1f1a12 - limestone (Member)
        Type = "`e[38;2;0;115;121m"              # #007379 - patina (Type)
        Comment = "`e[38;2;137;109;0m"           # #896d00 - forge_amber (Comment)
        Keyword = "`e[38;2;31;26;18m"            # #1f1a12 - limestone (Keyword)
        Error = "`e[38;2;138;0;0m"              # #8a0000 - rust (Error)
        Selection = "`e[48;2;234;220;196m"        # #eadcc4 - alloy (Visual selection bg)
        Default = "`e[38;2;31;26;18m"             # #1f1a12 - limestone (Normal.fg)
        Emphasis = "`e[38;2;31;26;18m"            # #1f1a12 - limestone (foreground)
}
