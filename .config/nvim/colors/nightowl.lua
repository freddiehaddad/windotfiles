-- Night Owl Neovim Theme
-- Name: nightowl
-- Maintainer: Adapted from Night Owl palette
-- Palette reference: assets/palette.svg (40 semantic colors)
-- Usage: place in your Neovim 'colors' directory and :colorscheme nightowl

local theme = {}

-- Semantic color palette (40 colors organized by purpose)
local p = {
  -- Foundation - Backgrounds
  bg = "#011627",
  bgAlt = "#0b253a",
  gutter = "#082235",
  statusBar = "#0e3047",
  
  -- Foundation - Foregrounds
  fg = "#d6deeb",
  fgSubtle = "#c9d4dd",
  fgMuted = "#89a4bb",
  fgDim = "#6f90ad",
  
  -- Foundation - Comments & Chrome
  comment = "#5f7e97",
  commentAlt = "#637777",
  border = "#1f4259",
  scrollbar = "#234d69",
  
  -- Syntax - Heavy Use (frequent tokens)
  string = "#c5e478",       -- String literals
  type = "#ecc48d",         -- Types, classes, interfaces
  number = "#f78c6c",       -- Numbers, constants, booleans
  func = "#82aaff",         -- Functions, methods
  
  -- Syntax - Medium Use (structural)
  operator = "#7fdbca",     -- Operators, symbols
  keyword = "#c792ea",      -- Keywords, control flow
  variable = "#addb67",     -- Variables, identifiers, parameters (NEW)
  property = "#9fcdeb",     -- Object properties, attributes (NEW)
  
  -- Syntax - Accents (special/markup)
  accent1 = "#f0a6bc",      -- Tags, decorators, list markers (NEW)
  accent2 = "#d4a5ff",      -- TODO, special symbols (NEW)
  accentPrimary = "#b985e9",-- UI accents
  
  -- Diagnostics & Status
  error = "#ef5350",
  warning = "#f78c6c",
  info = "#82aaff",
  success = "#c5e478",
  
  -- UI - Interactive
  cursorPrimary = "#3d6fd9",
  cursorSecondary = "#3aa59a",
  selection = "#1e3b55",
  selectionInactive = "#153144",
  lineHighlight = "#0f3148",
  
  -- UI - Menus
  menu = "#102e45",
  menuHover = "#184564",
  
  -- Special - Diff & Search
  diffAddedBg = "#0a2e1a",
  diffRemovedBg = "#2d1b1b",
  searchMatch = "#3d2e15",
  searchMatchActive = "#59401c",
  
  -- Terminal
  terminalBrightRed = "#ff6b85", -- ANSI color 9 (NEW)
}

-- Helper for highlights
local function hl(group, opts)
  theme[group] = opts
end

-- Base Editor UI
hl("Normal",         { fg = p.fg, bg = p.bg })
hl("NormalFloat",    { fg = p.fg, bg = p.bgAlt })
hl("FloatBorder",    { fg = p.border, bg = p.bgAlt })
hl("ColorColumn",    { bg = p.gutter })
hl("Cursor",         { fg = p.bg, bg = p.cursorPrimary })
hl("lCursor",        { fg = p.bg, bg = p.cursorSecondary })
hl("CursorIM",       { fg = p.bg, bg = p.cursorSecondary })
hl("CursorLine",     { bg = p.lineHighlight })
hl("CursorColumn",   { bg = p.lineHighlight })
hl("LineNr",         { fg = p.fgDim, bg = p.gutter })
hl("LineNrAbove",    { fg = p.comment, bg = p.gutter })
hl("LineNrBelow",    { fg = p.comment, bg = p.gutter })
hl("CursorLineNr",   { fg = p.fgMuted, bg = p.gutter, bold = true })
hl("SignColumn",     { fg = p.fgDim, bg = p.gutter })
hl("VertSplit",      { fg = p.border, bg = p.bg })
hl("WinSeparator",   { fg = p.border, bg = p.bg })
hl("EndOfBuffer",    { fg = p.bg })
hl("StatusLine",     { fg = p.fgSubtle, bg = p.statusBar })
hl("StatusLineNC",   { fg = p.comment, bg = p.statusBar })
hl("StatusLineTerm", { fg = p.fgSubtle, bg = p.statusBar })
hl("StatusLineTermNC", { fg = p.comment, bg = p.statusBar })
hl("TabLine",        { fg = p.comment, bg = p.statusBar })
hl("TabLineSel",     { fg = p.accentPrimary, bg = p.statusBar, bold = true })
hl("TabLineFill",    { fg = p.comment, bg = p.statusBar })
hl("Pmenu",          { fg = p.fg, bg = p.menu })
hl("PmenuSel",       { fg = p.fg, bg = p.menuHover })
hl("PmenuSbar",      { bg = p.border })
hl("PmenuThumb",     { bg = p.scrollbar })
hl("Search",         { fg = p.fg, bg = p.searchMatch })
hl("IncSearch",      { fg = p.fg, bg = p.searchMatchActive, bold = true })
hl("Substitute",     { fg = p.bg, bg = p.type })
hl("MatchParen",     { fg = p.accent2, bg = p.selectionInactive, bold = true })
hl("Visual",         { bg = p.selection })
hl("VisualNOS",      { bg = p.selectionInactive })
hl("QuickFixLine",   { bg = p.lineHighlight, bold = true })
hl("Folded",         { fg = p.comment, bg = p.bgAlt })
hl("FoldColumn",     { fg = p.comment, bg = p.gutter })
hl("Conceal",        { fg = p.commentAlt })
hl("Directory",      { fg = p.fgMuted, bold = true })
hl("Title",          { fg = p.func, bold = true })
hl("Question",       { fg = p.func, bold = true })
hl("MoreMsg",        { fg = p.success })
hl("ModeMsg",        { fg = p.fgMuted })
hl("WarningMsg",     { fg = p.warning, bold = true })
hl("ErrorMsg",       { fg = p.error, bold = true })
hl("NonText",        { fg = p.bgAlt })
hl("Whitespace",     { fg = p.bgAlt })

-- Diagnostics (semantic)
hl("DiagnosticError",       { fg = p.error })
hl("DiagnosticWarn",        { fg = p.warning })
hl("DiagnosticInfo",        { fg = p.info })
hl("DiagnosticHint",        { fg = p.fgMuted })
hl("DiagnosticOk",          { fg = p.success })
hl("DiagnosticUnderlineError", { sp = p.error, underline = true })
hl("DiagnosticUnderlineWarn",  { sp = p.warning, underline = true })
hl("DiagnosticUnderlineInfo",  { sp = p.info, underline = true })
hl("DiagnosticUnderlineHint",  { sp = p.fgMuted, underline = true })
hl("DiagnosticUnderlineOk",    { sp = p.success, underline = true })
hl("DiagnosticVirtualTextError", { fg = p.error, bg = p.selectionInactive })
hl("DiagnosticVirtualTextWarn",  { fg = p.warning, bg = p.selectionInactive })
hl("DiagnosticVirtualTextInfo",  { fg = p.info, bg = p.selectionInactive })
hl("DiagnosticVirtualTextHint",  { fg = p.fgMuted, bg = p.selectionInactive })
hl("DiagnosticVirtualTextOk",    { fg = p.success, bg = p.selectionInactive })

-- Diff / Version Control
hl("DiffAdd",    { bg = p.diffAddedBg })
hl("DiffChange", { bg = p.selectionInactive })
hl("DiffDelete", { bg = p.diffRemovedBg })
hl("DiffText",   { bg = p.selection })
hl("GitSignsAdd",    { fg = p.success, bg = p.gutter })
hl("GitSignsChange", { fg = p.type, bg = p.gutter })
hl("GitSignsDelete", { fg = p.error, bg = p.gutter })

-- Spelling
hl("SpellBad",   { sp = p.error, undercurl = true })
hl("SpellCap",   { sp = p.warning, undercurl = true })
hl("SpellLocal", { sp = p.operator, undercurl = true })
hl("SpellRare",  { sp = p.keyword, undercurl = true })

-- Syntax (semantic meaning)
hl("Comment",    { fg = p.commentAlt, italic = true })
hl("Constant",   { fg = p.number })
hl("String",     { fg = p.string })
hl("Character",  { fg = p.string })
hl("Number",     { fg = p.number })
hl("Boolean",    { fg = p.number, bold = true })
hl("Float",      { fg = p.number })
hl("Identifier", { fg = p.variable })
hl("Function",   { fg = p.func })
hl("Statement",  { fg = p.keyword })
hl("Conditional",{ fg = p.keyword })
hl("Repeat",     { fg = p.keyword })
hl("Label",      { fg = p.fgMuted })
hl("Operator",   { fg = p.operator })
hl("Keyword",    { fg = p.keyword })
hl("Exception",  { fg = p.keyword })
hl("PreProc",    { fg = p.operator })
hl("Include",    { fg = p.operator })
hl("Define",     { fg = p.operator })
hl("Macro",      { fg = p.operator })
hl("PreCondit",  { fg = p.operator })
hl("Type",       { fg = p.type })
hl("StorageClass", { fg = p.type })
hl("Structure",  { fg = p.type })
hl("Typedef",    { fg = p.type })
hl("Special",    { fg = p.func })
hl("SpecialChar",{ fg = p.func })
hl("Tag",        { fg = p.accent1 })
hl("Delimiter",  { fg = p.fg })
hl("SpecialComment", { fg = p.fgMuted, italic = true })
hl("Debug",      { fg = p.error })

-- Treesitter (explicit, no condensation)
hl("@comment",            { fg = p.commentAlt, italic = true })
hl("@error",              { fg = p.error })
hl("@none",               { fg = p.fg })
hl("@preproc",            { fg = p.operator })
hl("@define",             { fg = p.operator })
hl("@operator",           { fg = p.operator })
hl("@punctuation",        { fg = p.fg })
hl("@punctuation.delimiter", { fg = p.fg })
hl("@punctuation.bracket",   { fg = p.fg })
hl("@punctuation.special",   { fg = p.func })
hl("@string",             { fg = p.string })
hl("@string.regex",       { fg = p.operator })
hl("@string.escape",      { fg = p.operator })
hl("@string.special",     { fg = p.func })
hl("@character",          { fg = p.string })
hl("@character.special",  { fg = p.func })
hl("@boolean",            { fg = p.number, bold = true })
hl("@number",             { fg = p.number })
hl("@float",              { fg = p.number })
hl("@function",           { fg = p.func })
hl("@function.call",      { fg = p.func })
hl("@function.builtin",   { fg = p.func })
hl("@function.macro",     { fg = p.operator })
hl("@method",             { fg = p.func })
hl("@method.call",        { fg = p.func })
hl("@constructor",        { fg = p.type })
hl("@field",              { fg = p.property })
hl("@property",           { fg = p.property })
hl("@parameter",          { fg = p.variable, italic = true })
hl("@parameter.reference",{ fg = p.variable, italic = true })
hl("@variable",           { fg = p.variable })
hl("@variable.builtin",   { fg = p.variable })
hl("@variable.parameter", { fg = p.variable, italic = true })
hl("@variable.member",    { fg = p.property })
hl("@constant",           { fg = p.number })
hl("@constant.builtin",   { fg = p.number })
hl("@constant.macro",     { fg = p.number })
hl("@module",             { fg = p.fgMuted })
hl("@namespace",          { fg = p.fgMuted })
hl("@symbol",             { fg = p.accent2 })
hl("@type",               { fg = p.type })
hl("@type.builtin",       { fg = p.type })
hl("@type.definition",    { fg = p.type })
hl("@type.qualifier",     { fg = p.keyword })
hl("@storageclass",       { fg = p.type })
hl("@attribute",          { fg = p.accent1 })
hl("@field.documentation",{ fg = p.commentAlt, italic = true })
hl("@function.documentation", { fg = p.commentAlt, italic = true })
hl("@text",               { fg = p.fg })
hl("@text.strong",        { fg = p.func, bold = true })
hl("@text.emphasis",      { fg = p.keyword, italic = true })
hl("@text.underline",     { fg = p.func, underline = true })
hl("@text.strike",        { fg = p.commentAlt, strikethrough = true })
hl("@text.title",         { fg = p.func, bold = true })
hl("@text.literal",       { fg = p.string })
hl("@text.uri",           { fg = p.operator, underline = true })
hl("@text.reference",     { fg = p.accent2, underline = true })
hl("@text.todo",          { fg = p.accent2, bold = true })
hl("@text.warning",       { fg = p.warning, bold = true })
hl("@text.danger",        { fg = p.error, bold = true })
hl("@text.diff.add",      { fg = p.success })
hl("@text.diff.delete",   { fg = p.error })

-- LSP Semantic Tokens (explicit)
hl("@lsp.type.namespace", { link = "@namespace" })
hl("@lsp.type.type",      { link = "@type" })
hl("@lsp.type.class",     { fg = p.type })
hl("@lsp.type.enum",      { fg = p.type })
hl("@lsp.type.interface", { fg = p.type })
hl("@lsp.type.struct",    { fg = p.type })
hl("@lsp.type.parameter", { link = "@parameter" })
hl("@lsp.type.variable",  { link = "@variable" })
hl("@lsp.type.property",  { link = "@property" })
hl("@lsp.type.enumMember",{ fg = p.number })
hl("@lsp.type.function",  { link = "@function" })
hl("@lsp.type.method",    { link = "@method" })
hl("@lsp.type.macro",     { link = "@macro" })
hl("@lsp.type.keyword",   { link = "@keyword" })
hl("@lsp.type.comment",   { link = "@comment" })
hl("@lsp.type.string",    { link = "@string" })
hl("@lsp.type.number",    { link = "@number" })
hl("@lsp.type.regexp",    { link = "@string.regex" })
hl("@lsp.type.operator",  { link = "@operator" })
hl("@lsp.type.decorator", { fg = p.accent1 })

-- Completion (nvim-cmp or similar)
hl("CmpItemAbbr",        { fg = p.fg })
hl("CmpItemAbbrDeprecated", { fg = p.fgMuted, strikethrough = true })
hl("CmpItemAbbrMatch",   { fg = p.func, bold = true })
hl("CmpItemAbbrMatchFuzzy", { fg = p.func })
hl("CmpItemMenu",        { fg = p.fgMuted })
hl("CmpItemKindText",    { fg = p.fg })
hl("CmpItemKindMethod",  { fg = p.func })
hl("CmpItemKindFunction",{ fg = p.func })
hl("CmpItemKindConstructor", { fg = p.type })
hl("CmpItemKindField",   { fg = p.property })
hl("CmpItemKindVariable",{ fg = p.variable })
hl("CmpItemKindClass",   { fg = p.type })
hl("CmpItemKindInterface", { fg = p.type })
hl("CmpItemKindModule",  { fg = p.fgMuted })
hl("CmpItemKindProperty",{ fg = p.property })
hl("CmpItemKindUnit",    { fg = p.number })
hl("CmpItemKindValue",   { fg = p.number })
hl("CmpItemKindEnum",    { fg = p.type })
hl("CmpItemKindKeyword", { fg = p.keyword })
hl("CmpItemKindSnippet", { fg = p.func })
hl("CmpItemKindColor",   { fg = p.operator })
hl("CmpItemKindFile",    { fg = p.fgMuted })
hl("CmpItemKindReference", { fg = p.accent2 })
hl("CmpItemKindFolder",  { fg = p.fgMuted })
hl("CmpItemKindEnumMember", { fg = p.number })
hl("CmpItemKindConstant",{ fg = p.number })
hl("CmpItemKindStruct",  { fg = p.type })
hl("CmpItemKindEvent",   { fg = p.keyword })
hl("CmpItemKindOperator",{ fg = p.operator })
hl("CmpItemKindTypeParameter", { fg = p.type })

-- Telescope
hl("TelescopeNormal",      { fg = p.fg, bg = p.bgAlt })
hl("TelescopeBorder",      { fg = p.border, bg = p.bgAlt })
hl("TelescopePrompt",      { fg = p.fg, bg = p.menu })
hl("TelescopePromptBorder",{ fg = p.border, bg = p.menu })
hl("TelescopeSelection",   { fg = p.fg, bg = p.menuHover })
hl("TelescopeMatching",    { fg = p.func, bold = true })

-- NvimTree / File Explorer
hl("NvimTreeNormal",      { fg = p.fg, bg = p.bgAlt })
hl("NvimTreeRootFolder",  { fg = p.func, bold = true })
hl("NvimTreeFolderName",  { fg = p.fgMuted })
hl("NvimTreeFolderIcon",  { fg = p.fgMuted })
hl("NvimTreeFileIcon",    { fg = p.fg })
hl("NvimTreeExecFile",    { fg = p.success })
hl("NvimTreeOpenedFile",  { fg = p.func })
hl("NvimTreeSpecialFile", { fg = p.accent2 })
hl("NvimTreeSymlink",     { fg = p.operator })
hl("NvimTreeGitDirty",    { fg = p.warning })
hl("NvimTreeGitStaged",   { fg = p.success })
hl("NvimTreeGitNew",      { fg = p.success })
hl("NvimTreeGitDeleted",  { fg = p.error })
hl("NvimTreeGitIgnored",  { fg = p.comment })

-- WhichKey
hl("WhichKey",          { fg = p.func })
hl("WhichKeyGroup",    { fg = p.keyword })
hl("WhichKeyDesc",     { fg = p.fgMuted })
hl("WhichKeySeparator",{ fg = p.comment })
hl("WhichKeyFloat",    { fg = p.fg, bg = p.bgAlt })

-- Indent Blankline / Scope
hl("IndentBlanklineChar",        { fg = p.border })
hl("IndentBlanklineContextChar", { fg = p.fgMuted })
hl("IndentBlanklineSpaceChar",   { fg = p.bgAlt })
hl("IndentBlanklineIndent1",     { fg = p.border })
hl("IndentBlanklineIndent2",     { fg = p.border })
hl("IndentBlanklineIndent3",     { fg = p.border })
hl("IndentBlanklineIndent4",     { fg = p.border })
hl("IndentBlanklineIndent5",     { fg = p.border })
hl("IndentBlanklineIndent6",     { fg = p.border })

-- Misc Interface
hl("HelpHeader",      { fg = p.func, bold = true })
hl("HelpSectionDelim", { fg = p.border })
hl("ToolbarButton",   { fg = p.bg, bg = p.func })
hl("ToolbarLine",     { fg = p.fg, bg = p.bgAlt })

-- Markdown specific
hl("markdownHeadingDelimiter", { fg = p.func, bold = true })
hl("markdownH1",              { fg = p.func, bold = true })
hl("markdownH2",              { fg = p.func, bold = true })
hl("markdownH3",              { fg = p.func, bold = true })
hl("markdownH4",              { fg = p.func, bold = true })
hl("markdownH5",              { fg = p.func, bold = true })
hl("markdownH6",              { fg = p.func, bold = true })
hl("markdownBold",            { fg = p.func, bold = true })
hl("markdownItalic",          { fg = p.keyword, italic = true })
hl("markdownCode",            { fg = p.string })
hl("markdownCodeBlock",       { fg = p.string })
hl("markdownCodeDelimiter",   { fg = p.string })
hl("markdownBlockquote",      { fg = p.fgMuted, italic = true })
hl("markdownListMarker",      { fg = p.accent1 })
hl("markdownOrderedListMarker", { fg = p.accent1 })
hl("markdownRule",            { fg = p.border })
hl("markdownLinkText",        { fg = p.accent1, underline = true })
hl("markdownLinkDelimiter",   { fg = p.fg })
hl("markdownUrl",             { fg = p.operator, underline = true })
hl("markdownFootnote",        { fg = p.accent2 })
hl("markdownFootnoteDefinition", { fg = p.accent2 })

-- HTML / XML
hl("htmlTag",        { fg = p.accent1 })
hl("htmlEndTag",     { fg = p.accent1 })
hl("htmlTagName",    { fg = p.type })
hl("htmlArg",        { fg = p.property })
hl("htmlScriptTag",  { fg = p.accent1 })
hl("xmlTag",         { fg = p.accent1 })
hl("xmlEndTag",      { fg = p.accent1 })
hl("xmlTagName",     { fg = p.type })
hl("xmlAttrib",      { fg = p.property })

-- CSS / SCSS
hl("cssAtRule",      { fg = p.keyword })
hl("cssProp",        { fg = p.property })
hl("cssAttr",        { fg = p.type })
hl("cssPseudoClass", { fg = p.func })
hl("cssClassName",   { fg = p.accent1 })
hl("cssIdentifier",  { fg = p.accent1 })

-- JavaScript / TypeScript
hl("jsVariableDef",      { fg = p.variable })
hl("jsFuncCall",         { fg = p.func })
hl("jsFunction",         { fg = p.func })
hl("jsFunctionName",     { fg = p.func })
hl("jsClassName",        { fg = p.type })
hl("jsOperator",         { fg = p.operator })
hl("jsNumber",           { fg = p.number })
hl("jsString",           { fg = p.string })
hl("jsBoolean",          { fg = p.number })
hl("jsRegexpString",     { fg = p.operator })
hl("jsThis",             { fg = p.keyword })
hl("jsNull",             { fg = p.number })
hl("typescriptVariable", { fg = p.variable })
hl("typescriptType",     { fg = p.type })
hl("typescriptEnum",     { fg = p.type })
hl("typescriptAliasDeclaration", { fg = p.type })
hl("typescriptNumeric",  { fg = p.number })
hl("typescriptOperator", { fg = p.operator })

-- Python
hl("pythonBuiltin",      { fg = p.variable })
hl("pythonFunction",     { fg = p.func })
hl("pythonClassName",    { fg = p.type })
hl("pythonDecorator",    { fg = p.accent1 })
hl("pythonOperator",     { fg = p.operator })
hl("pythonException",    { fg = p.keyword })

-- Shell / Bash
hl("bashVariable",   { fg = p.variable })
hl("bashFunc",       { fg = p.func })
hl("bashNumber",     { fg = p.number })
hl("bashOperator",   { fg = p.operator })
hl("bashStatement",  { fg = p.keyword })

-- JSON / YAML
hl("jsonKeyword",         { fg = p.property })
hl("jsonString",          { fg = p.string })
hl("jsonNumber",          { fg = p.number })
hl("jsonBoolean",         { fg = p.number })
hl("yamlKey",             { fg = p.property })
hl("yamlString",          { fg = p.string })
hl("yamlAnchor",          { fg = p.accent2 })
hl("yamlAlias",           { fg = p.accent2 })

-- Diff signs (alternate plugin conventions)
hl("DiffAdded",   { fg = p.success })
hl("DiffRemoved", { fg = p.error })
hl("DiffChanged", { fg = p.type })
hl("DiffLine",    { bg = p.lineHighlight })

-- Terminal colors
vim.g.terminal_color_0  = p.bg
vim.g.terminal_color_1  = p.error
vim.g.terminal_color_2  = p.success
vim.g.terminal_color_3  = p.type
vim.g.terminal_color_4  = p.func
vim.g.terminal_color_5  = p.keyword
vim.g.terminal_color_6  = p.operator
vim.g.terminal_color_7  = p.fg
vim.g.terminal_color_8  = p.commentAlt
vim.g.terminal_color_9  = p.terminalBrightRed
vim.g.terminal_color_10 = p.success
vim.g.terminal_color_11 = p.type
vim.g.terminal_color_12 = p.func
vim.g.terminal_color_13 = p.keyword
vim.g.terminal_color_14 = p.operator
vim.g.terminal_color_15 = p.fg

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
      if spec.fg then table.insert(cmd, "guifg=" .. spec.fg) end
      if spec.bg then table.insert(cmd, "guibg=" .. spec.bg) end
      if spec.sp then table.insert(cmd, "guisp=" .. spec.sp) end
      local styles = {}
      if spec.bold then table.insert(styles, "bold") end
      if spec.italic then table.insert(styles, "italic") end
      if spec.underline then table.insert(styles, "underline") end
      if spec.undercurl then table.insert(styles, "undercurl") end
      if spec.strikethrough then table.insert(styles, "strikethrough") end
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
