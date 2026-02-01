---@diagnostic disable: undefined-global

return {
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
	filetypes = { "c", "cpp" },
	root_markers = { ".git", ".clangd", "compile_commands.json" },
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
		},
	},
}
