$PSStyle.FileInfo.Directory = "`e[38;2;59;96;124m"

Set-PSReadLineOption -Colors @{
    InlinePrediction = "`e[38;2;184;172;160m"
    Operator = "`e[38;2;109;98;89m"
    Parameter = "`e[38;2;79;91;84m"
    Command = "`e[38;2;59;96;124m"
    String = "`e[38;2;73;103;60m"
    Number = "`e[38;2;117;91;37m"
    Variable = "`e[38;2;40;35;30m"
    Member = "`e[38;2;40;35;30m"
    Type = "`e[38;2;47;106;102m"
    Comment = "`e[38;2;135;125;114m"
    Keyword = "`e[38;2;138;74;47m"
    Error = "`e[38;2;147;63;53m"
    Selection = "`e[48;2;228;211;196m"
    Default = "`e[38;2;40;35;30m"
    Emphasis = "`e[38;2;109;80;100m"
}
