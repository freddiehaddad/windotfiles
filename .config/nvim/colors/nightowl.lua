-- Night Owl Extended Neovim Theme
-- Name: nightowl
-- Maintainer: Adapted from Night Owl palette (original + extended semantic colors)
-- Palette reference: palette.svg (32 colors)
-- Usage: place in your Neovim 'colors' directory and :colorscheme nightowl
-- Do not condense; explicit groups for clarity and semantic mapping.

local theme = {}

-- Core palette (original Night Owl 16 + extended UI semantic colors)
local p = {
	nightOwlBg = "#011627",
	nightOwlPanel = "#0b253a",
	nightOwlFg = "#d6deeb",
	nightOwlLightGray = "#89a4bb",
	nightOwlMuted = "#5f7e97",
	nightOwlGray = "#637777",
	nightOwlBlue = "#82AAFF",
	nightOwlCyan = "#7fdbca",
	nightOwlPurple = "#c792ea",
	nightOwlGreen = "#c5e478",
	nightOwlYellow = "#ecc48d",
	nightOwlOrange = "#F78C6C",
	nightOwlRed = "#EF5350",
	nightOwlPink = "#ff5874",
	diffAddedBg = "#0a2e1a",
	diffRemovedBg = "#2d1b1b",
	cursorPrimary = "#3D6FD9",
	cursorSecondary = "#3AA59A",
	selectionBg = "#1E3B55",
	selectionInactiveBg = "#153144",
	lineHighlightBg = "#0F3148",
	gutterBg = "#082235",
	gutterFg = "#6F90AD",
	statusBarBg = "#0E3047",
	statusBarFg = "#C9D4DD",
	statusBarAccent = "#B985E9",
	menuBg = "#102E45",
	menuHoverBg = "#184564",
	menuBorder = "#1F4259",
	scrollbarThumb = "#234D69",
	searchMatchBg = "#3D2E15",
	searchMatchActiveBg = "#59401C",
}

-- Helper for highlights
local function hl(group, opts)
	theme[group] = opts
end

-- Base Editor UI
hl("Normal", { fg = p.nightOwlFg, bg = p.nightOwlBg })
hl("NormalFloat", { fg = p.nightOwlFg, bg = p.nightOwlPanel })
hl("FloatBorder", { fg = p.menuBorder, bg = p.nightOwlPanel })
hl("ColorColumn", { bg = p.gutterBg })
hl("Cursor", { fg = p.nightOwlBg, bg = p.cursorPrimary })
hl("lCursor", { fg = p.nightOwlBg, bg = p.cursorSecondary })
hl("CursorIM", { fg = p.nightOwlBg, bg = p.cursorSecondary })
hl("CursorLine", { bg = p.lineHighlightBg })
hl("CursorColumn", { bg = p.lineHighlightBg })
hl("LineNr", { fg = p.gutterFg, bg = p.gutterBg })
hl("LineNrAbove", { fg = p.nightOwlMuted, bg = p.gutterBg })
hl("LineNrBelow", { fg = p.nightOwlMuted, bg = p.gutterBg })
hl("CursorLineNr", { fg = p.nightOwlLightGray, bg = p.gutterBg, bold = true })
hl("SignColumn", { fg = p.gutterFg, bg = p.gutterBg })
hl("VertSplit", { fg = p.menuBorder, bg = p.nightOwlBg })
hl("WinSeparator", { fg = p.menuBorder, bg = p.nightOwlBg })
hl("EndOfBuffer", { fg = p.nightOwlBg })
hl("StatusLine", { fg = p.statusBarFg, bg = p.statusBarBg })
hl("StatusLineNC", { fg = p.nightOwlMuted, bg = p.statusBarBg })
hl("StatusLineTerm", { fg = p.statusBarFg, bg = p.statusBarBg })
hl("StatusLineTermNC", { fg = p.nightOwlMuted, bg = p.statusBarBg })
hl("TabLine", { fg = p.nightOwlMuted, bg = p.statusBarBg })
hl("TabLineSel", { fg = p.statusBarAccent, bg = p.statusBarBg, bold = true })
hl("TabLineFill", { fg = p.nightOwlMuted, bg = p.statusBarBg })
hl("Pmenu", { fg = p.nightOwlFg, bg = p.menuBg })
hl("PmenuSel", { fg = p.nightOwlFg, bg = p.menuHoverBg })
hl("PmenuSbar", { bg = p.menuBorder })
hl("PmenuThumb", { bg = p.scrollbarThumb })
hl("Search", { fg = p.nightOwlFg, bg = p.searchMatchBg })
hl("IncSearch", { fg = p.nightOwlFg, bg = p.searchMatchActiveBg, bold = true })
hl("Substitute", { fg = p.nightOwlBg, bg = p.nightOwlYellow })
hl("MatchParen", { fg = p.nightOwlPink, bg = p.selectionInactiveBg, bold = true })
hl("Visual", { bg = p.selectionBg })
hl("VisualNOS", { bg = p.selectionInactiveBg })
hl("QuickFixLine", { bg = p.lineHighlightBg, bold = true })
hl("Folded", { fg = p.nightOwlMuted, bg = p.nightOwlPanel })
hl("FoldColumn", { fg = p.nightOwlMuted, bg = p.gutterBg })
hl("Conceal", { fg = p.nightOwlGray })
hl("Directory", { fg = p.nightOwlLightGray, bold = true })
hl("Title", { fg = p.nightOwlBlue, bold = true })
hl("Question", { fg = p.nightOwlBlue, bold = true })
hl("MoreMsg", { fg = p.nightOwlGreen })
hl("ModeMsg", { fg = p.nightOwlLightGray })
hl("WarningMsg", { fg = p.nightOwlOrange, bold = true })
hl("ErrorMsg", { fg = p.nightOwlRed, bold = true })
hl("NonText", { fg = p.nightOwlPanel })
hl("Whitespace", { fg = p.nightOwlPanel })

-- Diagnostics (semantic)
hl("DiagnosticError", { fg = p.nightOwlRed })
hl("DiagnosticWarn", { fg = p.nightOwlOrange })
hl("DiagnosticInfo", { fg = p.nightOwlCyan })
hl("DiagnosticHint", { fg = p.nightOwlLightGray })
hl("DiagnosticOk", { fg = p.nightOwlGreen })
hl("DiagnosticUnderlineError", { sp = p.nightOwlRed, underline = true })
hl("DiagnosticUnderlineWarn", { sp = p.nightOwlOrange, underline = true })
hl("DiagnosticUnderlineInfo", { sp = p.nightOwlCyan, underline = true })
hl("DiagnosticUnderlineHint", { sp = p.nightOwlLightGray, underline = true })
hl("DiagnosticUnderlineOk", { sp = p.nightOwlGreen, underline = true })
hl("DiagnosticVirtualTextError", { fg = p.nightOwlRed, bg = p.selectionInactiveBg })
hl("DiagnosticVirtualTextWarn", { fg = p.nightOwlOrange, bg = p.selectionInactiveBg })
hl("DiagnosticVirtualTextInfo", { fg = p.nightOwlCyan, bg = p.selectionInactiveBg })
hl("DiagnosticVirtualTextHint", { fg = p.nightOwlLightGray, bg = p.selectionInactiveBg })
hl("DiagnosticVirtualTextOk", { fg = p.nightOwlGreen, bg = p.selectionInactiveBg })

-- Diff / Version Control
hl("DiffAdd", { bg = p.diffAddedBg })
hl("DiffChange", { bg = p.selectionInactiveBg })
hl("DiffDelete", { bg = p.diffRemovedBg })
hl("DiffText", { bg = p.selectionBg })
hl("GitSignsAdd", { fg = p.nightOwlGreen, bg = p.gutterBg })
hl("GitSignsChange", { fg = p.nightOwlYellow, bg = p.gutterBg })
hl("GitSignsDelete", { fg = p.nightOwlRed, bg = p.gutterBg })

-- Spelling
hl("SpellBad", { sp = p.nightOwlRed, undercurl = true })
hl("SpellCap", { sp = p.nightOwlOrange, undercurl = true })
hl("SpellLocal", { sp = p.nightOwlCyan, undercurl = true })
hl("SpellRare", { sp = p.nightOwlPurple, undercurl = true })

-- Syntax (semantic meaning)
hl("Comment", { fg = p.nightOwlGray, italic = true })
hl("Constant", { fg = p.nightOwlOrange })
hl("String", { fg = p.nightOwlYellow })
hl("Character", { fg = p.nightOwlYellow })
hl("Number", { fg = p.nightOwlOrange })
hl("Boolean", { fg = p.nightOwlOrange, bold = true })
hl("Float", { fg = p.nightOwlOrange })
hl("Identifier", { fg = p.nightOwlPink })
hl("Function", { fg = p.nightOwlBlue })
hl("Statement", { fg = p.nightOwlPurple })
hl("Conditional", { fg = p.nightOwlPurple })
hl("Repeat", { fg = p.nightOwlPurple })
hl("Label", { fg = p.nightOwlLightGray })
hl("Operator", { fg = p.nightOwlCyan })
hl("Keyword", { fg = p.nightOwlPurple })
hl("Exception", { fg = p.nightOwlPurple })
hl("PreProc", { fg = p.nightOwlCyan })
hl("Include", { fg = p.nightOwlCyan })
hl("Define", { fg = p.nightOwlCyan })
hl("Macro", { fg = p.nightOwlCyan })
hl("PreCondit", { fg = p.nightOwlCyan })
hl("Type", { fg = p.nightOwlYellow })
hl("StorageClass", { fg = p.nightOwlYellow })
hl("Structure", { fg = p.nightOwlYellow })
hl("Typedef", { fg = p.nightOwlYellow })
hl("Special", { fg = p.nightOwlBlue })
hl("SpecialChar", { fg = p.nightOwlBlue })
hl("Tag", { fg = p.nightOwlPink })
hl("Delimiter", { fg = p.nightOwlFg })
hl("SpecialComment", { fg = p.nightOwlLightGray, italic = true })
hl("Debug", { fg = p.nightOwlRed })

-- Treesitter (explicit, no condensation)
hl("@comment", { fg = p.nightOwlGray, italic = true })
hl("@error", { fg = p.nightOwlRed })
hl("@none", { fg = p.nightOwlFg })
hl("@preproc", { fg = p.nightOwlCyan })
hl("@define", { fg = p.nightOwlCyan })
hl("@operator", { fg = p.nightOwlCyan })
hl("@punctuation", { fg = p.nightOwlFg })
hl("@punctuation.delimiter", { fg = p.nightOwlFg })
hl("@punctuation.bracket", { fg = p.nightOwlFg })
hl("@punctuation.special", { fg = p.nightOwlBlue })
hl("@string", { fg = p.nightOwlYellow })
hl("@string.regex", { fg = p.nightOwlCyan })
hl("@string.escape", { fg = p.nightOwlCyan })
hl("@string.special", { fg = p.nightOwlBlue })
hl("@character", { fg = p.nightOwlYellow })
hl("@character.special", { fg = p.nightOwlBlue })
hl("@boolean", { fg = p.nightOwlOrange, bold = true })
hl("@number", { fg = p.nightOwlOrange })
hl("@float", { fg = p.nightOwlOrange })
hl("@function", { fg = p.nightOwlBlue })
hl("@function.call", { fg = p.nightOwlBlue })
hl("@function.builtin", { fg = p.nightOwlBlue })
hl("@function.macro", { fg = p.nightOwlCyan })
hl("@method", { fg = p.nightOwlBlue })
hl("@method.call", { fg = p.nightOwlBlue })
hl("@constructor", { fg = p.nightOwlYellow })
hl("@field", { fg = p.nightOwlLightGray })
hl("@property", { fg = p.nightOwlLightGray })
hl("@parameter", { fg = p.nightOwlPink, italic = true })
hl("@parameter.reference", { fg = p.nightOwlPink, italic = true })
hl("@variable", { fg = p.nightOwlPink })
hl("@variable.builtin", { fg = p.nightOwlPink })
hl("@variable.parameter", { fg = p.nightOwlPink, italic = true })
hl("@variable.member", { fg = p.nightOwlLightGray })
hl("@constant", { fg = p.nightOwlOrange })
hl("@constant.builtin", { fg = p.nightOwlOrange })
hl("@constant.macro", { fg = p.nightOwlOrange })
hl("@module", { fg = p.nightOwlLightGray })
hl("@namespace", { fg = p.nightOwlLightGray })
hl("@symbol", { fg = p.nightOwlPink })
hl("@type", { fg = p.nightOwlYellow })
hl("@type.builtin", { fg = p.nightOwlYellow })
hl("@type.definition", { fg = p.nightOwlYellow })
hl("@type.qualifier", { fg = p.nightOwlPurple })
hl("@storageclass", { fg = p.nightOwlYellow })
hl("@attribute", { fg = p.nightOwlPink })
hl("@field.documentation", { fg = p.nightOwlGray, italic = true })
hl("@function.documentation", { fg = p.nightOwlGray, italic = true })
hl("@text", { fg = p.nightOwlFg })
hl("@text.strong", { fg = p.nightOwlBlue, bold = true })
hl("@text.emphasis", { fg = p.nightOwlPurple, italic = true })
hl("@text.underline", { fg = p.nightOwlBlue, underline = true })
hl("@text.strike", { fg = p.nightOwlGray, strikethrough = true })
hl("@text.title", { fg = p.nightOwlBlue, bold = true })
hl("@text.literal", { fg = p.nightOwlYellow })
hl("@text.uri", { fg = p.nightOwlCyan, underline = true })
hl("@text.reference", { fg = p.nightOwlPink, underline = true })
hl("@text.todo", { fg = p.nightOwlPink, bold = true })
hl("@text.warning", { fg = p.nightOwlOrange, bold = true })
hl("@text.danger", { fg = p.nightOwlRed, bold = true })
hl("@text.diff.add", { fg = p.nightOwlGreen })
hl("@text.diff.delete", { fg = p.nightOwlRed })

-- LSP Semantic Tokens (explicit)
hl("@lsp.type.namespace", { link = "@namespace" })
hl("@lsp.type.type", { link = "@type" })
hl("@lsp.type.class", { fg = p.nightOwlYellow })
hl("@lsp.type.enum", { fg = p.nightOwlYellow })
hl("@lsp.type.interface", { fg = p.nightOwlYellow })
hl("@lsp.type.struct", { fg = p.nightOwlYellow })
hl("@lsp.type.parameter", { link = "@parameter" })
hl("@lsp.type.variable", { link = "@variable" })
hl("@lsp.type.property", { link = "@property" })
hl("@lsp.type.enumMember", { fg = p.nightOwlOrange })
hl("@lsp.type.function", { link = "@function" })
hl("@lsp.type.method", { link = "@method" })
hl("@lsp.type.macro", { link = "@macro" })
hl("@lsp.type.keyword", { link = "@keyword" })
hl("@lsp.type.comment", { link = "@comment" })
hl("@lsp.type.string", { link = "@string" })
hl("@lsp.type.number", { link = "@number" })
hl("@lsp.type.regexp", { link = "@string.regex" })
hl("@lsp.type.operator", { link = "@operator" })
hl("@lsp.type.decorator", { fg = p.nightOwlPink })

-- Completion (nvim-cmp or similar)
hl("CmpItemAbbr", { fg = p.nightOwlFg })
hl("CmpItemAbbrDeprecated", { fg = p.nightOwlRed, strikethrough = true })
hl("CmpItemAbbrMatch", { fg = p.nightOwlBlue, bold = true })
hl("CmpItemAbbrMatchFuzzy", { fg = p.nightOwlBlue })
hl("CmpItemMenu", { fg = p.nightOwlLightGray })
hl("CmpItemKindText", { fg = p.nightOwlFg })
hl("CmpItemKindMethod", { fg = p.nightOwlBlue })
hl("CmpItemKindFunction", { fg = p.nightOwlBlue })
hl("CmpItemKindConstructor", { fg = p.nightOwlYellow })
hl("CmpItemKindField", { fg = p.nightOwlLightGray })
hl("CmpItemKindVariable", { fg = p.nightOwlPink })
hl("CmpItemKindClass", { fg = p.nightOwlYellow })
hl("CmpItemKindInterface", { fg = p.nightOwlYellow })
hl("CmpItemKindModule", { fg = p.nightOwlLightGray })
hl("CmpItemKindProperty", { fg = p.nightOwlLightGray })
hl("CmpItemKindUnit", { fg = p.nightOwlOrange })
hl("CmpItemKindValue", { fg = p.nightOwlOrange })
hl("CmpItemKindEnum", { fg = p.nightOwlYellow })
hl("CmpItemKindKeyword", { fg = p.nightOwlPurple })
hl("CmpItemKindSnippet", { fg = p.nightOwlBlue })
hl("CmpItemKindColor", { fg = p.nightOwlCyan })
hl("CmpItemKindFile", { fg = p.nightOwlLightGray })
hl("CmpItemKindReference", { fg = p.nightOwlPink })
hl("CmpItemKindFolder", { fg = p.nightOwlLightGray })
hl("CmpItemKindEnumMember", { fg = p.nightOwlOrange })
hl("CmpItemKindConstant", { fg = p.nightOwlOrange })
hl("CmpItemKindStruct", { fg = p.nightOwlYellow })
hl("CmpItemKindEvent", { fg = p.nightOwlPurple })
hl("CmpItemKindOperator", { fg = p.nightOwlCyan })
hl("CmpItemKindTypeParameter", { fg = p.nightOwlYellow })

-- Telescope
hl("TelescopeNormal", { fg = p.nightOwlFg, bg = p.nightOwlPanel })
hl("TelescopeBorder", { fg = p.menuBorder, bg = p.nightOwlPanel })
hl("TelescopePrompt", { fg = p.nightOwlFg, bg = p.menuBg })
hl("TelescopePromptBorder", { fg = p.menuBorder, bg = p.menuBg })
hl("TelescopeSelection", { fg = p.nightOwlFg, bg = p.menuHoverBg })
hl("TelescopeMatching", { fg = p.nightOwlBlue, bold = true })

-- NvimTree / File Explorer
hl("NvimTreeNormal", { fg = p.nightOwlFg, bg = p.nightOwlPanel })
hl("NvimTreeRootFolder", { fg = p.nightOwlBlue, bold = true })
hl("NvimTreeFolderName", { fg = p.nightOwlLightGray })
hl("NvimTreeFolderIcon", { fg = p.nightOwlLightGray })
hl("NvimTreeFileIcon", { fg = p.nightOwlFg })
hl("NvimTreeExecFile", { fg = p.nightOwlGreen })
hl("NvimTreeOpenedFile", { fg = p.nightOwlBlue })
hl("NvimTreeSpecialFile", { fg = p.nightOwlPink })
hl("NvimTreeSymlink", { fg = p.nightOwlCyan })
hl("NvimTreeGitDirty", { fg = p.nightOwlOrange })
hl("NvimTreeGitStaged", { fg = p.nightOwlGreen })
hl("NvimTreeGitNew", { fg = p.nightOwlGreen })
hl("NvimTreeGitDeleted", { fg = p.nightOwlRed })
hl("NvimTreeGitIgnored", { fg = p.nightOwlMuted })

-- WhichKey
hl("WhichKey", { fg = p.nightOwlBlue })
hl("WhichKeyGroup", { fg = p.nightOwlPurple })
hl("WhichKeyDesc", { fg = p.nightOwlLightGray })
hl("WhichKeySeparator", { fg = p.nightOwlMuted })
hl("WhichKeyFloat", { fg = p.nightOwlFg, bg = p.nightOwlPanel })

-- Indent Blankline / Scope
hl("IndentBlanklineChar", { fg = p.menuBorder })
hl("IndentBlanklineContextChar", { fg = p.nightOwlLightGray })
hl("IndentBlanklineSpaceChar", { fg = p.nightOwlPanel })
hl("IndentBlanklineIndent1", { fg = p.menuBorder })
hl("IndentBlanklineIndent2", { fg = p.menuBorder })
hl("IndentBlanklineIndent3", { fg = p.menuBorder })
hl("IndentBlanklineIndent4", { fg = p.menuBorder })
hl("IndentBlanklineIndent5", { fg = p.menuBorder })
hl("IndentBlanklineIndent6", { fg = p.menuBorder })

-- Misc Interface
hl("HelpHeader", { fg = p.nightOwlBlue, bold = true })
hl("HelpSectionDelim", { fg = p.menuBorder })
hl("ToolbarButton", { fg = p.nightOwlBg, bg = p.nightOwlBlue })
hl("ToolbarLine", { fg = p.nightOwlFg, bg = p.nightOwlPanel })

-- Markdown specific
hl("markdownHeadingDelimiter", { fg = p.nightOwlBlue, bold = true })
hl("markdownH1", { fg = p.nightOwlBlue, bold = true })
hl("markdownH2", { fg = p.nightOwlBlue, bold = true })
hl("markdownH3", { fg = p.nightOwlBlue, bold = true })
hl("markdownH4", { fg = p.nightOwlBlue, bold = true })
hl("markdownH5", { fg = p.nightOwlBlue, bold = true })
hl("markdownH6", { fg = p.nightOwlBlue, bold = true })
hl("markdownBold", { fg = p.nightOwlBlue, bold = true })
hl("markdownItalic", { fg = p.nightOwlPurple, italic = true })
hl("markdownCode", { fg = p.nightOwlYellow })
hl("markdownCodeBlock", { fg = p.nightOwlYellow })
hl("markdownCodeDelimiter", { fg = p.nightOwlYellow })
hl("markdownBlockquote", { fg = p.nightOwlLightGray, italic = true })
hl("markdownListMarker", { fg = p.nightOwlPink })
hl("markdownOrderedListMarker", { fg = p.nightOwlPink })
hl("markdownRule", { fg = p.menuBorder })
hl("markdownLinkText", { fg = p.nightOwlPink, underline = true })
hl("markdownLinkDelimiter", { fg = p.nightOwlFg })
hl("markdownUrl", { fg = p.nightOwlCyan, underline = true })
hl("markdownFootnote", { fg = p.nightOwlPink })
hl("markdownFootnoteDefinition", { fg = p.nightOwlPink })

-- HTML / XML
hl("htmlTag", { fg = p.nightOwlPink })
hl("htmlEndTag", { fg = p.nightOwlPink })
hl("htmlTagName", { fg = p.nightOwlYellow })
hl("htmlArg", { fg = p.nightOwlLightGray })
hl("htmlScriptTag", { fg = p.nightOwlPink })
hl("xmlTag", { fg = p.nightOwlPink })
hl("xmlEndTag", { fg = p.nightOwlPink })
hl("xmlTagName", { fg = p.nightOwlYellow })
hl("xmlAttrib", { fg = p.nightOwlLightGray })

-- CSS / SCSS
hl("cssAtRule", { fg = p.nightOwlPurple })
hl("cssProp", { fg = p.nightOwlLightGray })
hl("cssAttr", { fg = p.nightOwlYellow })
hl("cssPseudoClass", { fg = p.nightOwlBlue })
hl("cssClassName", { fg = p.nightOwlPink })
hl("cssIdentifier", { fg = p.nightOwlPink })

-- JavaScript / TypeScript
hl("jsVariableDef", { fg = p.nightOwlPink })
hl("jsFuncCall", { fg = p.nightOwlBlue })
hl("jsFunction", { fg = p.nightOwlBlue })
hl("jsFunctionName", { fg = p.nightOwlBlue })
hl("jsClassName", { fg = p.nightOwlYellow })
hl("jsOperator", { fg = p.nightOwlCyan })
hl("jsNumber", { fg = p.nightOwlOrange })
hl("jsString", { fg = p.nightOwlYellow })
hl("jsBoolean", { fg = p.nightOwlOrange })
hl("jsRegexpString", { fg = p.nightOwlCyan })
hl("jsThis", { fg = p.nightOwlPurple })
hl("jsNull", { fg = p.nightOwlOrange })
hl("typescriptVariable", { fg = p.nightOwlPink })
hl("typescriptType", { fg = p.nightOwlYellow })
hl("typescriptEnum", { fg = p.nightOwlYellow })
hl("typescriptAliasDeclaration", { fg = p.nightOwlYellow })
hl("typescriptNumeric", { fg = p.nightOwlOrange })
hl("typescriptOperator", { fg = p.nightOwlCyan })

-- Python
hl("pythonBuiltin", { fg = p.nightOwlPink })
hl("pythonFunction", { fg = p.nightOwlBlue })
hl("pythonClassName", { fg = p.nightOwlYellow })
hl("pythonDecorator", { fg = p.nightOwlPink })
hl("pythonOperator", { fg = p.nightOwlCyan })
hl("pythonException", { fg = p.nightOwlPurple })

-- Shell / Bash
hl("bashVariable", { fg = p.nightOwlPink })
hl("bashFunc", { fg = p.nightOwlBlue })
hl("bashNumber", { fg = p.nightOwlOrange })
hl("bashOperator", { fg = p.nightOwlCyan })
hl("bashStatement", { fg = p.nightOwlPurple })

-- JSON / YAML
hl("jsonKeyword", { fg = p.nightOwlLightGray })
hl("jsonString", { fg = p.nightOwlYellow })
hl("jsonNumber", { fg = p.nightOwlOrange })
hl("jsonBoolean", { fg = p.nightOwlOrange })
hl("yamlKey", { fg = p.nightOwlLightGray })
hl("yamlString", { fg = p.nightOwlYellow })
hl("yamlAnchor", { fg = p.nightOwlPink })
hl("yamlAlias", { fg = p.nightOwlPink })

-- Diff signs (alternate plugin conventions)
hl("DiffAdded", { fg = p.nightOwlGreen })
hl("DiffRemoved", { fg = p.nightOwlRed })
hl("DiffChanged", { fg = p.nightOwlYellow })
hl("DiffLine", { bg = p.lineHighlightBg })

-- Terminal colors
vim.g.terminal_color_0 = p.nightOwlBg
vim.g.terminal_color_1 = p.nightOwlRed
vim.g.terminal_color_2 = p.nightOwlGreen
vim.g.terminal_color_3 = p.nightOwlYellow
vim.g.terminal_color_4 = p.nightOwlBlue
vim.g.terminal_color_5 = p.nightOwlPurple
vim.g.terminal_color_6 = p.nightOwlCyan
vim.g.terminal_color_7 = p.nightOwlFg
vim.g.terminal_color_8 = p.nightOwlGray
vim.g.terminal_color_9 = p.nightOwlRed
vim.g.terminal_color_10 = p.nightOwlGreen
vim.g.terminal_color_11 = p.nightOwlYellow
vim.g.terminal_color_12 = p.nightOwlBlue
vim.g.terminal_color_13 = p.nightOwlPurple
vim.g.terminal_color_14 = p.nightOwlCyan
vim.g.terminal_color_15 = p.nightOwlFg

-- Apply highlights
local function apply()
	if vim.fn.has("termguicolors") == 1 then
		vim.o.termguicolors = true
	end
	vim.o.background = "dark"
	vim.g.colors_name = "nightowl"
	for group, spec in pairs(theme) do
		local cmd = { "hi", group }
		if spec.link then
			vim.cmd(string.format("hi link %s %s", group, spec.link))
		else
			if spec.fg then
				table.insert(cmd, "guifg=" .. spec.fg)
			end
			if spec.bg then
				table.insert(cmd, "guibg=" .. spec.bg)
			end
			if spec.sp then
				table.insert(cmd, "guisp=" .. spec.sp)
			end
			local styles = {}
			if spec.bold then
				table.insert(styles, "bold")
			end
			if spec.italic then
				table.insert(styles, "italic")
			end
			if spec.underline then
				table.insert(styles, "underline")
			end
			if spec.undercurl then
				table.insert(styles, "undercurl")
			end
			if spec.strikethrough then
				table.insert(styles, "strikethrough")
			end
			if #styles > 0 then
				table.insert(cmd, "gui=" .. table.concat(styles, ","))
			else
				table.insert(cmd, "gui=NONE")
			end
			vim.cmd(table.concat(cmd, " "))
		end
	end
end

apply()

return theme
