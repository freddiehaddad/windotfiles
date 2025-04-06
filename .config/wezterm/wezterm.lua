local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.colors = {
	foreground = "#a6a18d",
	background = "#000000",

	cursor_fg = "none",
	cursor_bg = "#7a2427",
	cursor_border = "#7a2427",

	compose_cursor = "#c15a3b",

	selection_fg = "none",
	selection_bg = "#141d19",

	split = "none",

	ansi = {
		"#494a4d", -- black
		"#cd9474", -- red
		"#9e7a58", -- green
		"#c09c58", -- yellow
		"#a14b31", -- blue
		"#734c4d", -- magenta
		"#979797", -- cyan
		"#a6a18d", -- white (grey)
	},

	brights = {
		"#616267", -- black
		"#d4a488", -- red
		"#ad8c6e", -- green
		"#c8ad7a", -- yellow
		"#c15a3b", -- blue
		"#8d5e5f", -- magenta
		"#a5a5a5", -- cyan
		"#b2ae9d", -- white
	},
}

config.disable_default_key_bindings = true
config.disable_default_mouse_bindings = false

config.scrollback_lines = 100000

config.window_decorations = "RESIZE"
config.window_background_opacity = 1.0

config.default_prog = {
	"pwsh",
	"-NoLogo",
	"-NoProfileLoadTime",
	"-NoExit",
	"-File",
	"C:\\Users\\fhaddad\\.config\\powershell\\profile.ps1",
}
config.default_cwd = "s:/projects/git"

config.font = wezterm.font({ family = "SeriousShanns Nerd Font", weight = "Regular", italic = false })
config.font_size = 14
-- config.bold_brightens_ansi_colors = "BrightOnly"
config.font_rules = {
	-- diable bold
	{
		intensity = "Bold",
		font = wezterm.font({ family = "SeriousShanns Nerd Font", weight = "Regular", style = "Normal" }),
	},
	-- disable half/italic
	{
		intensity = "Half",
		italic = true,
		font = wezterm.font({ family = "SeriousShanns Nerd Font", weight = "Thin", style = "Normal" }),
	},
}
config.adjust_window_size_when_changing_font_size = false

config.inactive_pane_hsb = {
	saturation = 1.0,
}

config.enable_tab_bar = false

config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 1000 }

config.key_tables = {
	pane_navigation = {
		{
			key = "h",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "j",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
		{
			key = "k",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			key = "l",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "Escape",
			action = "PopKeyTable",
		},
	},

	pane_creation = {
		{
			key = "v",
			action = wezterm.action.SplitPane({
				direction = "Right",
			}),
		},
		{
			key = "v",
			mods = "SHIFT",
			action = wezterm.action.SplitPane({
				direction = "Left",
			}),
		},
		{
			key = "h",
			action = wezterm.action.SplitPane({
				direction = "Down",
			}),
		},
		{
			key = "h",
			mods = "SHIFT",
			action = wezterm.action.SplitPane({
				direction = "Up",
			}),
		},
		{
			key = "Escape",
			action = "PopKeyTable",
		},
	},

	pane_resize = {
		{
			key = "LeftArrow",
			action = wezterm.action.AdjustPaneSize({ "Left", 2 }),
		},
		{
			key = "DownArrow",
			action = wezterm.action.AdjustPaneSize({ "Down", 2 }),
		},
		{
			key = "UpArrow",
			action = wezterm.action.AdjustPaneSize({ "Up", 2 }),
		},
		{
			key = "RightArrow",
			action = wezterm.action.AdjustPaneSize({ "Right", 2 }),
		},
		{
			key = "Escape",
			action = "PopKeyTable",
		},
	},

	copy_mode = {
		-- navigation
		{ key = "e", mods = "CTRL", action = wezterm.action.ScrollByLine(-1) },
		{ key = "y", mods = "CTRL", action = wezterm.action.ScrollByLine(1) },

		{ key = "b", mods = "CTRL", action = wezterm.action.ScrollByPage(-0.5) },
		{ key = "f", mods = "CTRL", action = wezterm.action.ScrollByPage(0.5) },

		{ key = "u", mods = "CTRL", action = wezterm.action.ScrollByPage(-0.5) },
		{ key = "d", mods = "CTRL", action = wezterm.action.ScrollByPage(0.5) },

		{ key = "h", mods = "SHIFT", action = wezterm.action.CopyMode("MoveToViewportTop") },
		{ key = "l", mods = "SHIFT", action = wezterm.action.CopyMode("MoveToViewportBottom") },
		{ key = "m", mods = "SHIFT", action = wezterm.action.CopyMode("MoveToViewportMiddle") },

		{ key = "^", mods = "SHIFT", action = wezterm.action.CopyMode("MoveToStartOfLineContent") },
		{ key = "$", mods = "SHIFT", action = wezterm.action.CopyMode("MoveToEndOfLineContent") },

		{ key = "h", mods = "NONE", action = wezterm.action.CopyMode("MoveLeft") },
		{ key = "j", mods = "NONE", action = wezterm.action.CopyMode("MoveDown") },
		{ key = "k", mods = "NONE", action = wezterm.action.CopyMode("MoveUp") },
		{ key = "l", mods = "NONE", action = wezterm.action.CopyMode("MoveRight") },

		-- visual/selection mode
		{ key = "v", mods = "NONE", action = wezterm.action.CopyMode({ SetSelectionMode = "Cell" }) },
		{ key = "v", mods = "SHIFT", action = wezterm.action.CopyMode({ SetSelectionMode = "Line" }) },
		{ key = "v", mods = "CTRL", action = wezterm.action.CopyMode({ SetSelectionMode = "Block" }) },

		-- search
		{ key = "/", mods = "NONE", action = wezterm.action.Search("CurrentSelectionOrEmptyString") },
		{ key = "n", mods = "NONE", action = wezterm.action.CopyMode("NextMatch") },
		{ key = "N", mods = "NONE", action = wezterm.action.CopyMode("PriorMatch") },

		{
			key = "y",
			mods = "NONE",
			action = wezterm.action.Multiple({
				wezterm.action.CopyMode("ClearPattern"),
				wezterm.action.CopyMode("ClearSelectionMode"),
				wezterm.action.CopyMode("AcceptPattern"),
				{ CopyTo = "ClipboardAndPrimarySelection" },
				{ CopyMode = "Close" },
			}),
		},

		{
			key = "Escape",
			mods = "NONE",
			action = wezterm.action.Multiple({
				wezterm.action.ScrollToBottom,
				wezterm.action.CopyMode("ClearPattern"),
				wezterm.action.CopyMode("ClearSelectionMode"),
				wezterm.action.CopyMode("AcceptPattern"),
				{ CopyMode = "Close" },
			}),
		},
	},

	search_mode = {
		{
			key = "Escape",
			mods = "NONE",
			action = wezterm.action.Multiple({
				wezterm.action.CopyMode("ClearPattern"),
				wezterm.action.CopyMode("ClearSelectionMode"),
				wezterm.action.CopyMode("AcceptPattern"),
			}),
		},

		{ key = "Enter", mods = "NONE", action = wezterm.action.CopyMode("AcceptPattern") },
	},
}

config.keys = {
	-- key tables
	{
		key = "m",
		mods = "LEADER",
		action = wezterm.action.ActivateKeyTable({
			name = "pane_navigation",
			one_shot = false,
			timeout_milliseconds = 2000,
		}),
	},
	{
		key = "w",
		mods = "LEADER",
		action = wezterm.action.ActivateKeyTable({
			name = "pane_creation",
			one_shot = true,
		}),
	},
	{
		key = "r",
		mods = "LEADER",
		action = wezterm.action.ActivateKeyTable({
			name = "pane_resize",
			one_shot = false,
			timeout_milliseconds = 2000,
		}),
	},
	{
		key = "Escape",
		mods = "LEADER",
		action = wezterm.action.Multiple({
			wezterm.action.ActivateCopyMode,
			wezterm.action.ClearSelection,
			wezterm.action.CopyMode("ClearSelectionMode"),
		}),
	},

	-- fonts
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.DecreaseFontSize,
	},
	{
		key = "+",
		mods = "CTRL|SHIFT",
		action = wezterm.action.IncreaseFontSize,
	},
	{
		key = "=",
		mods = "CTRL",
		action = wezterm.action.ResetFontSize,
	},

	-- workspaces
	{
		key = "s",
		mods = "LEADER",
		action = wezterm.action.ShowLauncherArgs({
			flags = "FUZZY|WORKSPACES",
		}),
	},
	{
		key = "S",
		mods = "LEADER|SHIFT",
		action = wezterm.action.PromptInputLine({
			description = "Enter name for new workspace",
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:perform_action(wezterm.action.SwitchToWorkspace({ name = line }), pane)
				end
			end),
		}),
	},

	-- reload configuration
	{ key = "r", mods = "LEADER|SHIFT", action = wezterm.action.ReloadConfiguration },

	-- clipboard
	{ key = "p", mods = "LEADER", action = wezterm.action.PasteFrom("Clipboard") },

	-- command palette
	{ key = "p", mods = "CTRL|SHIFT", action = wezterm.action.ActivateCommandPalette },
}

return config
