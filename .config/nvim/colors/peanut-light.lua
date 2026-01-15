---@diagnostic disable: undefined-global

local hl = vim.api.nvim_set_hl

vim.cmd("highlight clear")
vim.g.colors_name = "peanut light"

local ui = {
	bg = {
		"#f2f0eb", -- 1: base background
		"#ede9e3", -- 2: inactive tabs, window splits
		"#e7e3dc", -- 3: statuslines, cursorline
		"#e0dbd3", -- 4: menus, popups, active tabs
		"#d8d2c8", -- 5: menu hover, active tabs
	},
	fg = {
		"#3a4045", -- 1: primary, statusline, menu text, active tabs
		"#2a3035", -- 2: labels, secondary menu items
		"#6a7075", -- 3: inactive tabs, disabled items
		"#95a0a5", -- 4: line/fold gutter text
		"#1a2025", -- 5: titles, emphasized
	},
}

local msg = {
	"#a8604e", -- 1: error
	"#9e7540", -- 2: warn
	"#5a7e95", -- 3: info (more)
	"#5f7e69", -- 4: hint (mode)
	"#a8604e", -- 5: spell
}

local search = {
	bg = {
		"#dcd7c8", -- 1: match
		"#cfc9b8", -- 2: current
	},
	fg = {
		"#7a6548", -- 1: match
		"#654e35", -- 2: current
	},
}

local lsp = {
	bg = {
		"#f5e0dc", -- 1: error
		"#f5ecd9", -- 2: warn
		"#e3eef5", -- 3: info
		"#e8f0ea", -- 4: hint
		"#e6f2e8", -- 5: ok
	},
	fg = {
		"#a8604e", -- 1: error
		"#9e7540", -- 2: warn
		"#5a7e95", -- 3: info
		"#5f7e69", -- 4: hint
		"#5f7f68", -- 5: ok
	},
}

local vcs = {
	bg = {
		"#e6f2e8", -- 1: add
		"#e3eef5", -- 2: change
		"#f5e0dc", -- 3: delete
		"#f2e8d8", -- 4: changed text
	},
	fg = {
		"#5f7f68", -- 1: add
		"#5a7e95", -- 2: change
		"#a8604e", -- 3: delete
		"#8e6845", -- 4: changed text
	},
}

local code = {
	"#4a6888", -- 1: constants, numbers, booleans, macros
	"#5f5850", -- 2: keywords, constructors
	"#86704a", -- 3: functions, method names
	"#5a544a", -- 4: properties, fields, parameters
	"#6e6048", -- 5: identifiers, plain variables
	"#4a4038", -- 6: operators, punctuation, delimiters
	"#a0acb0", -- 7: comments, nontext
	"#58636e", -- 8: types, type annotations
	"#302820", -- 9: emphasis
}

-- UI
hl(0, "Normal", { bg = ui.bg[1], fg = ui.fg[1] })
hl(0, "Title", { fg = ui.fg[5] })

hl(0, "Error", { fg = msg[1] })
hl(0, "ErrorMsg", { fg = msg[1] })
hl(0, "WarningMsg", { fg = msg[2] })
hl(0, "MoreMsg", { fg = msg[3] })
hl(0, "ModeMsg", { fg = msg[3] })
hl(0, "Question", { fg = msg[3] })
hl(0, "Directory", { fg = msg[3] })

hl(0, "Visual", { bg = search.bg[1], fg = search.fg[1] })
-- VisualNOS

hl(0, "Search", { bg = search.bg[1], fg = search.fg[1] })
hl(0, "CurSearch", { bg = search.bg[2], fg = search.fg[2] })
-- IncSearch

hl(0, "MatchParen", { fg = search.fg[2] })

hl(0, "Cursor", { bg = ui.fg[1], fg = ui.bg[1] })
-- hl(0, "TermCursor", { bg = ui.bg.cursor, fg = ui.fg.cursor })
-- hl(0, "lCursor", { bg = ui.bg.cursor, fg = ui.fg.cursor })
-- CursorIM

hl(0, "CursorLine", { bg = ui.bg[3] })
hl(0, "CursorLineNr", { bg = ui.bg[3], fg = ui.fg[1] })
hl(0, "CursorLineSign", { bg = ui.bg[3] })
hl(0, "CursorLineFold", { bg = ui.bg[3], fg = ui.fg[3] })

hl(0, "CursorColumn", { bg = ui.bg[3] })
hl(0, "ColorColumn", { bg = ui.bg[2] })

hl(0, "LineNr", { fg = ui.fg[1] })
hl(0, "LineNrAbove", { fg = ui.fg[4] })
hl(0, "LineNrBelow", { fg = ui.fg[4] })

hl(0, "NormalFloat", { bg = ui.bg[4] })
hl(0, "Pmenu", { bg = ui.bg[4], fg = ui.fg[1] })
hl(0, "PmenuSel", { bg = ui.bg[5] })
hl(0, "PmenuThumb", { bg = ui.bg[5] })
hl(0, "PmenuExtra", { fg = ui.fg[2] })
-- PmenuExtraSel
hl(0, "PmenuKind", { fg = ui.fg[2] })
-- PmenuKindSel
-- PmenuMatch
-- PmenuMatchSel
-- PmenuSbar
hl(0, "WildMenu", { bg = search.bg[1], fg = search.fg[2] })

hl(0, "Folded", { bg = ui.bg[2], fg = ui.fg[3] })
hl(0, "FoldColumn", { fg = ui.fg[4] })

hl(0, "TabLine", { bg = ui.bg[2], fg = ui.fg[3] })
hl(0, "TabLineFill", { bg = ui.bg[2] })
hl(0, "TabLineSel", { bg = ui.bg[4], fg = ui.fg[1] })

hl(0, "StatusLine", { bg = ui.bg[3], fg = ui.fg[1] })
hl(0, "StatusLineNC", { bg = ui.bg[3], fg = ui.fg[3] })
-- StatusLineTerm
-- StatusLineTermNC
hl(0, "WinSeparator", { fg = ui.bg[2] })

-- QuickFix
hl(0, "QuickFixLine", { bg = ui.bg[4] })
hl(0, "qfLineNr", { fg = ui.fg[3] })
hl(0, "qfText", { fg = code[1] })
hl(0, "qfSeparator1", { fg = code[6] })
hl(0, "qfSeparator2", { fg = code[6] })

-- LSP
-- DiagnosticDeprecated
hl(0, "DiagnosticError", { fg = lsp.fg[1] })
hl(0, "DiagnosticWarn", { fg = lsp.fg[2] })
hl(0, "DiagnosticInfo", { fg = lsp.fg[3] })
hl(0, "DiagnosticHint", { fg = lsp.fg[4] })
hl(0, "DiagnosticOk", { fg = lsp.fg[5] })
-- DiagnosticFloatingError
-- DiagnosticFloatingWarn
-- DiagnosticFloatingInfo
-- DiagnosticFloatingHint
-- DiagnosticFloatingOk
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
hl(0, "Todo", { fg = ui.fg[2] })
hl(0, "Comment", { fg = code[7] })

hl(0, "Identifier", { fg = code[5] })
hl(0, "Variable", { fg = code[5] })
hl(0, "Property", { fg = code[4] })
hl(0, "Field", { fg = code[4] })
hl(0, "Function", { fg = code[3] })
hl(0, "Keyword", { fg = code[2] })
hl(0, "Include", { fg = code[1] })
hl(0, "Statement", { fg = code[1] })
hl(0, "Operator", { fg = code[6] })
hl(0, "Special", { fg = code[2] })
hl(0, "Delimiter", { fg = code[6] })
hl(0, "Boolean", { fg = code[1] })
hl(0, "Character", { fg = code[1] })
hl(0, "Constant", { fg = code[1] })
hl(0, "Number", { fg = code[1] })
hl(0, "Float", { fg = code[1] })
hl(0, "String", { fg = code[1] })
hl(0, "Type", { fg = code[8] })
hl(0, "Typedef", { fg = code[8] })
hl(0, "Constructor", { fg = code[2] })
hl(0, "Structure", { fg = code[8] })
hl(0, "Macro", { fg = code[1] })
hl(0, "PreProc", { fg = code[6] })

-- Comment
hl(0, "@comment.documentation", { fg = ui.fg[7] })
hl(0, "@lsp.type.event", { fg = ui.fg[7] })
hl(0, "@lsp.typemod.keyword.documentation", { fg = ui.fg[7] })

hl(0, "@keyword.modifier", { fg = code[6] })
hl(0, "@lsp.type.property", { fg = code[4] })

hl(0, "@constructor", { fg = code[2] })
hl(0, "@variable", { fg = code[5] })

hl(0, "@lsp.type", { fg = code[8] })

-- Rust
hl(0, "@lsp.type.selfKeyword", { fg = code[2] })
hl(0, "@lsp.type.macro", { fg = code[3] })
