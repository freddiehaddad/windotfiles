---@diagnostic disable: undefined-global

vim.lsp.config["clangd"] = {
	-- Command and arguments to start the server.
	cmd = {
		"clangd",
		"--all-scopes-completion",
		"--background-index",
		"--clang-tidy",
		"--completion-style=detailed",
		"--function-arg-placeholders",
		"--header-insertion=iwyu",
		"--enable-config",
		"--pch-storage=memory",
		"--log=verbose",
		"--pretty",
	},
	filetypes = { "c", "cpp", "h" },
	root_markers = { ".git", ".clangd", "compile_commands.json" },
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
		},
	},
}
