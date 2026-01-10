---@diagnostic disable: undefined-global

vim.cmd.colorscheme("peanut-dark")

vim.opt.mouse = ""
vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.conceallevel = 2

vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99

vim.opt.cursorline = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.pumheight = 20

vim.lsp.enable({ "clangd", "luals", "rust_analyzer" })

require("blink.cmp").setup({
	keymap = {
		["<C-space>"] = false,
		["<C-s>"] = { "hide", "show_signature", "hide_signature" },
		["<C-k>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-e>"] = { "hide", "show" },
	},
})
