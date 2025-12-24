---@diagnostic disable: undefined-global

local hl = vim.api.nvim_set_hl

vim.cmd("highlight clear")
vim.g.colors_name = "peanut dark"

local ui = {
	bg = {
		"#1d1918", -- 1: base background
		"#241f1e", -- 2: inactive tabs, window splits
		"#292322", -- 3: statuslines, cursorline
		"#312c29", -- 4: menus, popups
		"#463f3b", -- 5: menu hover, active tabs
	},
	fg = {
		"#d5cbb8", -- 1: primary, statusline, menu text, active tabs
		"#bdb49f", -- 2: labels, secondary menu items
		"#574f4d", -- 3: inactive tabs, disabled items
		"#5f5452", -- 4: line/fold gutter text
		"#e2d8c0", -- 5: titles, emphasized
	},
}

local msg = {
	"#e07660", -- 1: error
	"#d9a858", -- 2: warn
	"#6ca3ca", -- 3: info (more)
	"#8eb199", -- 4: hint (mode)
	"#e07660", -- 5: spell
}

local search = {
	bg = {
		"#3a3628", -- 1: match
		"#453f2c", -- 2: current
	},
	fg = {
		"#d4a76d", -- 1: match
		"#e5bf90", -- 2: current
	},
}

local lsp = {
	bg = {
		"#2d211f", -- 1: error
		"#2d2519", -- 2: warn
		"#1e2a30", -- 3: info
		"#222a24", -- 4: hint
		"#232d25", -- 5: ok
	},
	fg = {
		"#e07660", -- 1: error
		"#d9a858", -- 2: warn
		"#6ca3ca", -- 3: info
		"#8eb199", -- 4: hint
		"#7cb589", -- 5: ok
	},
}

local vcs = {
	bg = {
		"#232d25", -- 1: add
		"#1e2a30", -- 2: change
		"#2d211f", -- 3: delete
		"#2d251a", -- 4: changed text
	},
	fg = {
		"#7cb589", -- 1: add
		"#6ca3ca", -- 2: change
		"#e07660", -- 3: delete
		"#c99d67", -- 4: changed text
	},
}

local code = {
	"#7d9db5", -- 1: constants, numbers, booleans, macros
	"#d4caba", -- 2: keywords, types, constructors
	"#c9bfad", -- 3: functions, method names
	"#b8ad9b", -- 4: properties, fields, parameters
	"#a59c8a", -- 5: identifiers, plain variables
	"#8d867a", -- 6: operators, punctuation, delimiters
	"#6e6b63", -- 7: comments, nontext
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
hl(0, "CursorLineFold", { bg = ui.bg[3] })

hl(0, "CursorColumn", { bg = ui.bg[3] })
hl(0, "ColorColumn", { bg = ui.bg[2] })

hl(0, "LineNr", { fg = ui.fg[1] })
hl(0, "LineNrAbove", { fg = ui.fg[3] })
hl(0, "LineNrBelow", { fg = ui.fg[3] })

-- NormalFloat
hl(0, "Pmenu", { bg = ui.bg[4], fg = ui.fg[1] })
hl(0, "PmenuSel", { bg = ui.bg[5], fg = ui.fg[1] })
hl(0, "PmenuThumb", { bg = ui.bg[5] })
-- PmenuExtra
-- PmenuExtraSel
-- PmenuKind
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
