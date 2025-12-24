---@diagnostic disable: undefined-global

vim.treesitter.start()

-- Treesitter-based folding (provided by Neovim)
vim.wo.foldexpr  = 'v:lua.vim.treesitter.foldexpr()'
vim.wo.foldmethod = 'expr'

-- Treesitter-based indentation (experimental module from nvim-treesitter)
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
