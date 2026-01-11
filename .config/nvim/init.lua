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
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.splitbelow = true
vim.opt.splitright = true

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

-- stylua: ignore start
-- Move between windows using Ctrl + h,j,k,l
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Resize windows using Ctrl + Arrow keys
vim.keymap.set("n", "<C-Up>",    ":resize -1<CR>",          { silent = true, desc = "Decrease window height" })
vim.keymap.set("n", "<C-Down>",  ":resize +1<CR>",          { silent = true, desc = "Increase window height" })
vim.keymap.set("n", "<C-Left>",  ":vertical resize -1<CR>", { silent = true, desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +1<CR>", { silent = true, desc = "Increase window width" })
-- stylua: ignore end

-- lsp
require("blink.cmp").setup({
	keymap = {
		["<C-space>"] = false,
		["<C-s>"] = { "hide", "show_signature", "hide_signature" },
		["<C-k>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-e>"] = { "hide", "show" },
	},
})

vim.lsp.enable({ "clangd", "luals", "rust_analyzer" })

