---@diagnostic disable: undefined-global

return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { { "Cargo.toml", "Cargo.lock" }, ".git" },
	settings = {
		["rust-analyzer"] = {},
	},
	capabilities = require("blink.cmp").get_lsp_capabilities(),
	handlers = {
		["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			wrap = false,
		}),
	},
}
