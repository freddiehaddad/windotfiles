---@diagnostic disable: undefined-global

vim.lsp.config["clangd"] = {
	-- Command and arguments to start the server.
	cmd = { "clangd" },
	filetypes = { "c", "cpp", "h" },
	root_markers = { ".git", "compile_commands.json" },
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
		},
	},

}
