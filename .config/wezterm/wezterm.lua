local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.disable_default_key_bindings = true
config.disable_default_mouse_bindings = true

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.99

config.default_prog = { "pwsh", "-NoLogo" }
config.default_cwd = "s:/projects/git"

config.font = wezterm.font("ComicShannsMono Nerd Font", { weight = "Bold" })
config.font_size = 12
config.bold_brightens_ansi_colors = "BrightOnly"
config.adjust_window_size_when_changing_font_size = false

config.inactive_pane_hsb = {
	saturation = 0.75,
}

config.enable_tab_bar = false

config.colors = {
	foreground = "#D6D6D7",
	background = "#090C11",

	cursor_fg = "#090C11",
	cursor_bg = "#8EBAA4",

	selection_fg = "#090C11",
	selection_bg = "#F6B079",

	split = "#30323A",

	ansi = {
		"#30323A",
		"#AB435D",
		"#6E9783",
		"#BAA363",
		"#6085B6",
		"#8567B6",
		"#54AEB0",
		"#BEBEBE",
	},

	brights = {
		"#393B44",
		"#C94F6D",
		"#81B29A",
		"#DBC074",
		"#719CD6",
		"#9D79D6",
		"#63CDCF",
		"#DFDFE0",
	},
}

config.leader = { key = "b", mods = "CTRL", timeout_milliseconds = 1000 }

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
}

return config
