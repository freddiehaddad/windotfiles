$PSStyle.FileInfo.Directory = "`e[38;2;59;98;126m"

Set-PSReadLineOption -Colors @{
    InlinePrediction = "`e[38;2;176;185;190m"
    Operator = "`e[38;2;105;117;124m"
    Parameter = "`e[38;2;77;90;96m"
    Command = "`e[38;2;59;98;126m"
    String = "`e[38;2;73;108;61m"
    Number = "`e[38;2;118;93;45m"
    Variable = "`e[38;2;35;42;46m"
    Member = "`e[38;2;35;42;46m"
    Type = "`e[38;2;50;109;104m"
    Comment = "`e[38;2;115;123;128m"
    Keyword = "`e[38;2;138;79;53m"
    Error = "`e[38;2;146;61;53m"
    Selection = "`e[48;2;213;224;230m"
    Default = "`e[38;2;35;42;46m"
    Emphasis = "`e[38;2;103;79;114m"
}
