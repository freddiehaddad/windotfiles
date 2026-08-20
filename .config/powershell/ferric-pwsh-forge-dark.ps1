$PSStyle.FileInfo.Directory = "`e[38;2;112;150;179m"

Set-PSReadLineOption -Colors @{
    InlinePrediction = "`e[38;2;74;64;58m"
    Operator = "`e[38;2;150;139;128m"
    Parameter = "`e[38;2;154;158;152m"
    Command = "`e[38;2;112;150;179m"
    String = "`e[38;2;126;157;105m"
    Number = "`e[38;2;184;154;93m"
    Variable = "`e[38;2;212;204;192m"
    Member = "`e[38;2;212;204;192m"
    Type = "`e[38;2;91;154;148m"
    Comment = "`e[38;2;117;108;99m"
    Keyword = "`e[38;2;196;124;87m"
    Error = "`e[38;2;201;98;88m"
    Selection = "`e[48;2;51;37;29m"
    Default = "`e[38;2;212;204;192m"
    Emphasis = "`e[38;2;167;131;145m"
}
