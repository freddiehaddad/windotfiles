$PSStyle.FileInfo.Directory = "`e[38;2;116;148;173m"

Set-PSReadLineOption -Colors @{
    InlinePrediction = "`e[38;2;69;70;72m"
    Operator = "`e[38;2;137;137;133m"
    Parameter = "`e[38;2;150;153;149m"
    Command = "`e[38;2;116;148;173m"
    String = "`e[38;2;127;152;109m"
    Number = "`e[38;2;173;145;94m"
    Variable = "`e[38;2;210;209;205m"
    Member = "`e[38;2;210;209;205m"
    Type = "`e[38;2;99;146;142m"
    Comment = "`e[38;2;116;115;111m"
    Keyword = "`e[38;2;183;122;80m"
    Error = "`e[38;2;195;94;88m"
    Selection = "`e[48;2;45;48;51m"
    Default = "`e[38;2;210;209;205m"
    Emphasis = "`e[38;2;169;135;167m"
}
