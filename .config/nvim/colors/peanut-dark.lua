---@diagnostic disable: undefined-global

local hl = vim.api.nvim_set_hl

vim.cmd("highlight clear")
vim.g.colors_name = "peanut dark"

local ui = {
	bg = {
		"#161a1f", -- 1: 100
		"#1e242b", -- 2: 200
		"#1e2836", -- 3: 300
		"#2b394d", -- 4: 400
	},
	fg = {
		"#465056", -- 1: 100
		"#556067", -- 2: 200
		"#637079", -- 3: 300
		"#76848f", -- 4: 400
		"#8d99a2", -- 5: 500
	},
}

local msg = {
	"#ff5c80", -- 1: error
	"#b0a347", -- 2: warn
	"#00c4d6", -- 3: more (info)
	"#2bc9a8", -- 4: mode (hint)
	"#ff5c80", -- 5: spell
}

local search = {
	bg = {
		"#003d54", -- 1: match
		"#7a3212", -- 2: current
		"#3d4f1a", -- 3: selection
	},
	fg = {
		"#00b0f7", -- 1: match
		"#ff8d4d", -- 2: current
		"#b8e05c", -- 3: selection
	},
}

local lsp = {
	bg = {
		"#7a1c2e", -- 1: error
		"#4a4012", -- 2: warn
		"#004750", -- 3: info
		"#0d473c", -- 4: hint
		"#175717", -- 5: ok
	},
	fg = {
		"#ff5c80", -- 1: error
		"#b0a347", -- 2: warn
		"#00c4d6", -- 3: info
		"#2bc9a8", -- 4: hint
		"#40e040", -- 5: ok
	},
}

local vcs = {
	bg = {
		"#1a4f30", -- 1: add
		"#56420e", -- 2: change
		"#7a2e1c", -- 3: delete
		"#522666", -- 4: changed text
	},
	fg = {
		"#4dd085", -- 1: add
		"#d6af47", -- 2: change
		"#ff7a5c", -- 3: delete
		"#d171f7", -- 4: changed text
	},
}

local code = {
	"#0099cc", -- 1: keywords (if, match, return, mut, ref, unsafe)
	"#b85fcc", -- 2: types & functions (struct, enum, trait, impl, fn names)
	"#4d555e", -- 3: muted (comments, doc comments, delimiters)
	"#9da3a6", -- 4: base foreground (variables, operators, punctuation)
	"#a7a59c", -- 5: emphasized (strings, numbers, constants, macros)
}

-- UI
hl(0, "Normal", { bg = ui.bg[1], fg = ui.fg[3] })
hl(0, "Title", { fg = ui.fg[5] })

hl(0, "Error", { fg = msg[1] })
hl(0, "ErrorMsg", { fg = msg[1] })
hl(0, "WarningMsg", { fg = msg[2] })
hl(0, "MoreMsg", { fg = msg[3] })
hl(0, "ModeMsg", { fg = msg[3] })
hl(0, "Question", { fg = msg[2] })
hl(0, "Directory", { fg = msg[2] })

hl(0, "Visual", { bg = search.bg[3], fg = search.fg[3] })
-- VisualNOS

hl(0, "Search", { bg = search.bg[1], fg = search.fg[1] })
hl(0, "CurSearch", { bg = search.bg[2], fg = search.fg[2] })
-- IncSearch

hl(0, "MatchParen", { fg = search.fg[2] })

hl(0, "Cursor", { bg = ui.fg[1], fg = ui.bg[1] })
-- hl(0, "TermCursor", { bg = ui.bg.cursor, fg = ui.fg.cursor })
-- hl(0, "lCursor", { bg = ui.bg.cursor, fg = ui.fg.cursor })
-- CursorIM

hl(0, "CursorLine", { bg = ui.bg[2] })
hl(0, "CursorLineNr", { bg = ui.bg[2], fg = search.fg[2] })
hl(0, "CursorLineSign", { bg = ui.bg[2] })
hl(0, "CursorLineFold", { bg = ui.bg[2], fg = ui.fg[1] })

hl(0, "CursorColumn", { bg = ui.bg[2] })
hl(0, "ColorColumn", { bg = ui.bg[2] })

hl(0, "LineNr", { fg = ui.fg[1] })
hl(0, "LineNrAbove", { fg = ui.fg[1] })
hl(0, "LineNrBelow", { fg = ui.fg[1] })

hl(0, "NormalFloat", { bg = ui.bg[3] })
hl(0, "Pmenu", { bg = ui.bg[3], fg = ui.fg[5] })
hl(0, "PmenuSel", { bg = ui.bg[4] })
hl(0, "PmenuThumb", { bg = ui.bg[4] })
hl(0, "PmenuExtra", { fg = code[1] })
hl(0, "PmenuKind", { fg = code[2] })
-- PmenuExtraSel
-- PmenuKindSel
-- PmenuMatch
-- PmenuMatchSel
-- PmenuSbar
hl(0, "WildMenu", { bg = search.bg[1], fg = search.fg[2] })

hl(0, "Folded", { bg = ui.bg[3], fg = ui.fg[5] })
hl(0, "FoldColumn", { fg = ui.fg[1] })

hl(0, "TabLine", { bg = ui.bg[1], fg = ui.fg[2] })
hl(0, "TabLineFill", { bg = ui.bg[1] })
hl(0, "TabLineSel", { bg = ui.bg[3], fg = ui.fg[4] })

hl(0, "StatusLine", { bg = ui.bg[1], fg = ui.fg[4] })
hl(0, "StatusLineNC", { bg = ui.bg[1], fg = ui.fg[2] })
-- StatusLineTerm
-- StatusLineTermNC
hl(0, "WinSeparator", { fg = ui.bg[1] })

-- QuickFix
hl(0, "QuickFixLine", { bg = ui.bg[2] })
hl(0, "qfLineNr", { fg = code[4] })
hl(0, "qfText", { fg = code[2] })
hl(0, "qfSeparator1", { fg = code[3] })
hl(0, "qfSeparator2", { fg = code[3] })

-- LSP
-- DiagnosticDeprecated
hl(0, "DiagnosticError", { fg = lsp.fg[1] })
hl(0, "DiagnosticWarn", { fg = lsp.fg[2] })
hl(0, "DiagnosticInfo", { fg = lsp.fg[3] })
hl(0, "DiagnosticHint", { fg = lsp.fg[4] })
hl(0, "DiagnosticOk", { fg = lsp.fg[5] })
hl(0, "DiagnosticFloatingError", { fg = lsp.fg[1], bg = lsp.bg[1] })
hl(0, "DiagnosticFloatingWarn", { fg = lsp.fg[2], bg = lsp.bg[2] })
hl(0, "DiagnosticFloatingInfo", { fg = lsp.fg[3], bg = lsp.bg[3] })
hl(0, "DiagnosticFloatingHint", { fg = lsp.fg[4], bg = lsp.bg[4] })
hl(0, "DiagnosticFloatingOk", { fg = lsp.fg[5], bg = lsp.bg[5] })
-- DiagnosticSignError
-- DiagnosticSignWarn
-- DiagnosticSignInfo
-- DiagnosticSignHint
-- DiagnosticSignOk
hl(0, "DiagnosticUnderlineError", { sp = lsp.fg[1], undercurl = true })
hl(0, "DiagnosticUnderlineWarn", { sp = lsp.fg[2], undercurl = true })
hl(0, "DiagnosticUnderlineInfo", { sp = lsp.fg[3], undercurl = true })
hl(0, "DiagnosticUnderlineHint", { sp = lsp.fg[4], undercurl = true })
hl(0, "DiagnosticUnderlineOk", { sp = lsp.fg[5], undercurl = true })
-- DiagnosticUnnecessary
-- DiagnosticVirtualLinesError
-- DiagnosticVirtualLinesWarn
-- DiagnosticVirtualLinesInfo
-- DiagnosticVirtualLinesHint
-- DiagnosticVirtualLinesOk
-- DiagnosticVirtualTextError
-- DiagnosticVirtualTextWarn
-- DiagnosticVirtualTextInfo
-- DiagnosticVirtualTextHint
-- DiagnosticVirtualTextOk

hl(0, "SpellBad", { sp = msg[5], undercurl = true })
hl(0, "SpellCap", { sp = msg[5], undercurl = true })
hl(0, "SpellLocal", { sp = msg[5], undercurl = true })
hl(0, "SpellRare", { sp = msg[5], undercurl = true })

-- VCS
hl(0, "Added", { fg = vcs.fg[1] })
hl(0, "Changed", { fg = vcs.fg[2] })
hl(0, "Removed", { fg = vcs.fg[3] })
hl(0, "DiffAdd", { bg = vcs.bg[1], fg = vcs.fg[1] })
hl(0, "DiffChange", { bg = vcs.bg[2], fg = vcs.fg[2] })
hl(0, "DiffDelete", { bg = vcs.bg[3], fg = vcs.fg[3] })
hl(0, "DiffText", { bg = vcs.bg[4], fg = vcs.fg[4] })

-- Syntax
hl(0, "Comment", { fg = code[3] })
hl(0, "Identifier", { fg = code[4] })
hl(0, "Variable", { fg = code[4] })
hl(0, "Property", { fg = code[4] })
hl(0, "Field", { fg = code[4] })
hl(0, "Function", { fg = code[2] })
hl(0, "Keyword", { fg = code[1] })
hl(0, "Include", { fg = code[1] })
hl(0, "Statement", { fg = code[1] })
hl(0, "Operator", { fg = code[4] })
hl(0, "Special", { fg = code[5] })
hl(0, "Delimiter", { fg = code[3] })
hl(0, "Boolean", { fg = code[5] })
hl(0, "Character", { fg = code[5] })
hl(0, "Constant", { fg = code[5] })
hl(0, "Number", { fg = code[5] })
hl(0, "Float", { fg = code[5] })
hl(0, "String", { fg = code[5] })
hl(0, "Type", { fg = code[2] })
hl(0, "Typedef", { fg = code[2] })
hl(0, "Constructor", { fg = code[2] })
hl(0, "Structure", { fg = code[2] })
hl(0, "Macro", { fg = code[5] })
hl(0, "PreProc", { fg = code[1] })

-- Treesitter tokens
hl(0, "@variable", { fg = code[4] })

-- LSP semantic tokens
hl(0, "@lsp.type.const", { fg = code[5] })
hl(0, "@lsp.type.macro", { fg = code[5] })
hl(0, "@lsp.type.method", { fg = code[2] })
hl(0, "@lsp.type.namespace", { fg = code[4] })
hl(0, "@lsp.type.parameter", { fg = code[4] })
hl(0, "@lsp.type.property", { fg = code[4] })
hl(0, "@lsp.type.selfKeyword", { fg = code[1] })
hl(0, "@lsp.type.struct", { fg = code[2] })
