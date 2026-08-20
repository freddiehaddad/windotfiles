$PSStyle.FileInfo.Directory = "`e[38;2;135;168;194m"

Set-PSReadLineOption -Colors @{
    InlinePrediction = "`e[38;2;70;81;90m"
    Operator = "`e[38;2;149;160;167m"
    Parameter = "`e[38;2;155;167;173m"
    Command = "`e[38;2;135;168;194m"
    String = "`e[38;2;136;166;114m"
    Number = "`e[38;2;192;160;99m"
    Variable = "`e[38;2;213;221;226m"
    Member = "`e[38;2;213;221;226m"
    Type = "`e[38;2;102;161;155m"
    Comment = "`e[38;2;118;130;138m"
    Keyword = "`e[38;2;199;126;93m"
    Error = "`e[38;2;211;107;97m"
    Selection = "`e[48;2;39;53;66m"
    Default = "`e[38;2;213;221;226m"
    Emphasis = "`e[38;2;176;149;181m"
}
