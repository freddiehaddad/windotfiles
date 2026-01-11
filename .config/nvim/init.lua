---@diagnostic disable: undefined-global

vim.cmd.colorscheme("peanut-dark")

vim.opt.mouse = ""
vim.opt.clipboard = "unnamedplus"

vim.opt.wrap = false
vim.opt.conceallevel = 2

vim.opt.pumheight = 20

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true

vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.statuscolumn = "%C %s%=%{v:relnum==0 ? v:lnum : v:relnum} "

-- Windows shell setup
if vim.fn.has("win32") == 1 then
	vim.opt.shell = "pwsh.exe"
	vim.opt.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command"
	-- tee is a GNU utility, on windows output to a file
	vim.opt.shellpipe = ">%s 2>&1"
	vim.opt.shellredir = ">%s 2>&1"
	-- For handling spaces in Windows paths correctly
	vim.opt.shellquote = ""
	vim.opt.shellxquote = ""
end

vim.opt.grepprg = "rg --vimgrep --smart-case --follow"

-- lsp
vim.lsp.enable({ "clangd", "luals", "rust_analyzer" })
require("blink.cmp").setup({
	keymap = {
		["<C-space>"] = false,
		["<C-s>"] = { "hide", "show_signature", "hide_signature" },
		["<C-k>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-e>"] = { "hide", "show" },
	},
})
