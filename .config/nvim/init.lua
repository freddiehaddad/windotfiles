---@diagnostic disable: undefined-global

vim.cmd.colorscheme("peanut-dark")

vim.opt.mouse = ""
vim.o.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99

vim.opt.cursorline = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.pumheight = 20

vim.lsp.enable("clangd")
vim.lsp.enable("luals")
vim.lsp.enable("rust_analyzer")
