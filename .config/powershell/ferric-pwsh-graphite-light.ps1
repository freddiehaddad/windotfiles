$PSStyle.FileInfo.Directory = "`e[38;2;63;96;120m"

Set-PSReadLineOption -Colors @{
    InlinePrediction = "`e[38;2;177;176;173m"
    Operator = "`e[38;2;112;113;111m"
    Parameter = "`e[38;2;80;88;84m"
    Command = "`e[38;2;63;96;120m"
    String = "`e[38;2;82;105;63m"
    Number = "`e[38;2;116;91;46m"
    Variable = "`e[38;2;41;42;41m"
    Member = "`e[38;2;41;42;41m"
    Type = "`e[38;2;57;107;103m"
    Comment = "`e[38;2;130;129;125m"
    Keyword = "`e[38;2;138;78;47m"
    Error = "`e[38;2;146;62;56m"
    Selection = "`e[48;2;216;217;218m"
    Default = "`e[38;2;41;42;41m"
    Emphasis = "`e[38;2;103;78;105m"
}
