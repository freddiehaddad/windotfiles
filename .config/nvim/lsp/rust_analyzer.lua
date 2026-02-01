---@diagnostic disable: undefined-global

return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { { "Cargo.toml", "Cargo.lock" }, ".git" },
	settings = {
		["rust-analyzer"] = {},
	},
	capabilities = require("blink.cmp").get_lsp_capabilities(),
	on_attach = function(_, bufnr)
		vim.keymap.set("n", "K", function()
			-- Create an autocommand for the markdown filetype used by hover popups
			local group = vim.api.nvim_create_augroup("LspHoverStyle", { clear = true })
			vim.api.nvim_create_autocmd("FileType", {
				group = group,
				pattern = "markdown",
				once = true,
				callback = function()
					local win = vim.api.nvim_get_current_win()
					-- Verify it is a floating window
					if vim.api.nvim_win_get_config(win).relative ~= "" then
						vim.wo[win].sidescrolloff = 0
						-- vim.wo[win].wrap = false
					end
				end,
			})

			-- Trigger the request
			vim.lsp.buf.hover({
				max_width = 100,
				wrap = false,
			})
		end, { buffer = bufnr, desc = "vim.lsp.buf.hover()" })
	end,
}
