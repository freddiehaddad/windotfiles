$PSStyle.FileInfo.Directory = "`e[38;2;82;144;211m" # #5290d3 - cobalt (Directory)

Set-PSReadLineOption -Colors @{
        InlinePrediction = "`e[38;2;72;64;64m"    # #484040 - special (ghost text)
        Operator = "`e[38;2;138;128;115m"          # #8a8073 - slag (Operator)
        Parameter = "`e[38;2;138;166;154m"         # #8aa69a - cast_iron (Parameter)
        Command = "`e[38;2;82;144;211m"           # #5290d3 - cobalt (Function)
        String = "`e[38;2;80;178;122m"            # #50b27a - verdigris (String)
        Number = "`e[38;2;204;125;42m"           # #cc7d2a - ember (Number)
        Variable = "`e[38;2;208;200;184m"         # #d0c8b8 - limestone (@variable)
        Member = "`e[38;2;208;200;184m"           # #d0c8b8 - limestone (Member)
        Type = "`e[38;2;46;163;169m"              # #2ea3a9 - patina (Type)
        Comment = "`e[38;2;199;171;53m"            # #c7ab35 - forge_amber (Comment)
        Keyword = "`e[38;2;208;200;184m"          # #d0c8b8 - limestone (Keyword)
        Error = "`e[38;2;207;66;56m"              # #cf4238 - rust (Error)
        Selection = "`e[48;2;60;42;30m"           # #3c2a1e - alloy (Visual selection bg)
        Default = "`e[38;2;208;200;184m"          # #d0c8b8 - limestone (Normal.fg)
        Emphasis = "`e[38;2;208;200;184m"         # #d0c8b8 - limestone (foreground)
}
