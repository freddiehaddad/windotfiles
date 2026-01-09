---@diagnostic disable: undefined-global

local hl = vim.api.nvim_set_hl

vim.cmd("highlight clear")
vim.g.colors_name = "peanut light"

local ui = {
	bg = {
		"#f0eee6", -- 1: base background
		"#e8e5da", -- 2: inactive tabs, window splits
		"#e0dccf", -- 3: statuslines, cursorline
		"#faf9f5", -- 4: menus, popups
		"#d8d4c5", -- 5: menu hover, active tabs
	},
	fg = {
		"#5a5448", -- 1: primary, statusline, menu text, active tabs
		"#726b5e", -- 2: labels, secondary menu items
		"#8d8679", -- 3: inactive tabs, disabled items
		"#9a9389", -- 4: line/fold gutter text
		"#4e4740", -- 5: titles, emphasized
	},
}

local msg = {
	"#c1503a", -- 1: error
	"#b8842c", -- 2: warn
	"#4a7d9e", -- 3: info (more)
	"#6b8b73", -- 4: hint (mode)
	"#c1503a", -- 5: spell
}

local search = {
	bg = {
		"#ddd9c8", -- 1: match
		"#d0cbb8", -- 2: current
	},
	fg = {
		"#8b6e3d", -- 1: match
		"#6d5530", -- 2: current
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
		"#c1503a", -- 1: error
		"#b8842c", -- 2: warn
		"#4a7d9e", -- 3: info
		"#6b8b73", -- 4: hint
		"#5a8f62", -- 5: ok
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
		"#5a8f62", -- 1: add
		"#4a7d9e", -- 2: change
		"#c1503a", -- 3: delete
		"#a5753b", -- 4: changed text
	},
}

local code = {
	"#4a6b7d", -- 1: constants, numbers, booleans, macros
	"#3a342a", -- 2: keywords, types, constructors
	"#4a4538", -- 3: functions, method names
	"#5a5448", -- 4: properties, fields, parameters
	"#6e6659", -- 5: identifiers, plain variables
	"#8b8276", -- 6: operators, punctuation, delimiters
	"#a39b8f", -- 7: comments, nontext
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
hl(0, "LineNrAbove", { fg = ui.fg[3] })
hl(0, "LineNrBelow", { fg = ui.fg[3] })

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
hl(0, "TabLineSel", { bg = ui.bg[5], fg = ui.fg[1] })

hl(0, "StatusLine", { bg = ui.bg[3], fg = ui.fg[1] })
hl(0, "StatusLineNC", { bg = ui.bg[3], fg = ui.fg[3] })
-- StatusLineTerm
-- StatusLineTermNC
hl(0, "WinSeparator", { fg = ui.bg[2] })
hl(0, "QuickFixLine", { fg = ui.bg[2] })

-- QuickFix
hl(0, "QuickFixLine", { bg = ui.bg[2] })
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
hl(0, "Type", { fg = code[2] })
hl(0, "Typedef", { fg = code[2] })
hl(0, "Constructor", { fg = code[2] })
hl(0, "Structure", { fg = code[2] })
hl(0, "Macro", { fg = code[1] })
hl(0, "PreProc", { fg = code[6] })

-- comment
hl(0, "@comment.documentation", { fg = ui.fg[7] })
hl(0, "@lsp.type.event", { fg = ui.fg[7] })
hl(0, "@lsp.typemod.keyword.documentation", { fg = ui.fg[7] })

hl(0, "@lsp.type.property", { fg = code[4] })

hl(0, "@constructor", { fg = code[2] })
hl(0, "@variable", { fg = code[5] })

hl(0, "@lsp.type", { fg = code[2] })
