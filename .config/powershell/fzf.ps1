#
#export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
#  --color=fg:#9c2222,fg+:#b25f5f,bg:#121212,bg+:#a05f5f
#  --color=hl:#7a226e,hl+:#40b930,info:#2ca16e,marker:#142303
#  --color=prompt:#8b4b68,spinner:#7735b9,pointer:#6c33a5,header:#189c9c
#  --color=gutter:#8d7373,border:#c26262,separator:#9c2a2a,scrollbar:#7e3131
#  --color=preview-fg:#25a357,preview-bg:#28924b,preview-border:#469c2c,preview-scrollbar:#942b2b
#  --color=preview-label:#092662,label:#641a95,query:#2031af,disabled:#2caf46
#  --border="sharp" --border-label=" fzf " --border-label-pos="0" --preview-window="border-sharp"
#  --prompt="> " --marker=">" --pointer="▶" --separator="─"
#  --scrollbar="│" --info="right"'

$palette = @{
	fg        = "#d6deeb" # main text color
	bg        = "#0b253a" # panel background
	hl        = "#ecc48d" # match highlight
	fgPlus    = "#d6deeb" # selected line fg
	bgPlus    = "#184564" # selected line background (contrast)
	hlPlus    = "#F78C6C" # selected match highlight
	info      = "#5f7e97" # info line
	prompt    = "#82aaff" # prompt symbol
	pointer   = "#ff5874" # current selection arrow
	marker    = "#c5e478" # multi-select marker
	spinner   = "#7fdbca" # spinner while searching
	header    = "#c792ea" # header lines
	border    = "#1f4259" # border color (subtle edge)
	label     = "#c9d4dd" # panel titles
	query     = "#c9d4dd" # search text
	gutter    = "#0b253a" # pointer area
	separator = "#184564" # line between list and prompt
	scrollbar = "#234d69" # scroll bar in search list
	disabled  = "#153144" # not sure?
}

$env:FZF_DEFAULT_OPTS = @"
--color=fg:$($palette.fg),fg+:$($palette.fgPlus)
--color=bg:$($palette.bg),bg+:$($palette.bgPlus)
--color=hl:$($palette.hl),hl+:$($palette.hlPlus)
--color=info:$($palette.info),marker:$($palette.marker)
--color=prompt:$($palette.prompt),spinner:$($palette.spinner)
--color=pointer:$($palette.pointer),header:$($palette.header)
--color=gutter:$($palette.gutter),border:$($palette.border)
--color=separator:$($palette.separator),scrollbar:$($palette.scrollbar)
--color=preview-border:$($palette.border),preview-scrollbar:$($palette.scrollbar)
--color=preview-label:$($palette.label),label:$($palette.label)
--color=query:$($palette.query),disabled:$($palette.disabled)
--border=sharp
--border-label=" fzf "
--border-label-pos="0"
--preview-window="border-sharp"
--margin=1
--padding=0
--prompt="❯ "
--marker="✓"
--pointer="▶"
--separator="─"
--scrollbar="│"
--info="right"
--height="40%"
--bind="ctrl-/:toggle-preview"
--bind="ctrl-u:preview-half-page-up"
--bind="ctrl-d:preview-half-page-down"
--bind="ctrl-f:preview-page-down"
--bind="ctrl-b:preview-page-up"
--bind="shift-up:preview-up"
--bind="shift-down:preview-down"
"@

