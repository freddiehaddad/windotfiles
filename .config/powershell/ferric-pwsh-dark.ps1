$PSStyle.FileInfo.Directory = "`e[38;2;106;136;176m" # #6a88b0 - cobalt (Directory)

Set-PSReadLineOption -Colors @{
        InlinePrediction = "`e[38;2;72;64;64m"    # #484040 - special (ghost text)
        Operator = "`e[38;2;96;112;104m"          # #6c7e75 - cast_iron (Operator)
        Parameter = "`e[38;2;90;152;160m"         # #5a98a0 - patina (Type)
        Command = "`e[38;2;90;170;136m"           # #5aaa88 - verdigris (Function)
        String = "`e[38;2;200;160;64m"            # #c8a040 - forge_amber (String)
        Number = "`e[38;2;106;136;176m"           # #6a88b0 - cobalt (@number)
        Variable = "`e[38;2;208;200;184m"         # #d0c8b8 - limestone (@variable)
        Member = "`e[38;2;144;128;112m"           # #948576 - tarnish (Identifier)
        Type = "`e[38;2;90;152;160m"              # #5a98a0 - patina (Type)
        Comment = "`e[38;2;106;98;88m"            # #8a8073 - slag (Comment)
        Keyword = "`e[38;2;192;90;64m"            # #c15c42 - rust (Keyword)
        Error = "`e[38;2;192;90;64m"              # #c15c42 - rust (Error)
        Selection = "`e[48;2;60;42;30m"           # #3c2a1e - alloy (Visual selection bg)
        Default = "`e[38;2;208;200;184m"          # #d0c8b8 - limestone (Normal.fg)
        Emphasis = "`e[38;2;208;200;184m"         # #d0c8b8 - limestone (foreground)
}
