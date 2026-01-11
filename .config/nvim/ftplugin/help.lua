-- Configuration for the :help window

---@diagnostic disable: undefined-global

vim.wo.number = false
vim.wo.relativenumber = false
vim.wo.signcolumn = "no"
vim.wo.foldcolumn = "0"
vim.wo.statuscolumn = ""
vim.wo.sidescrolloff = 0

vim.api.nvim_win_set_width(0, 80)
