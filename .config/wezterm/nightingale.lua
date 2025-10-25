-- Nightingale theme for WezTerm
-- Based on the Nightingale VS Code theme
-- https://github.com/bfrangi/vscode-nightingale-theme

local nightingale = {}

nightingale.colors = {
  -- The default text color
  foreground = "#DCD7BA",
  -- The default background color
  background = "#1a1a1a",

  -- Cursor colors
  cursor_bg = "#DCD7BA",
  cursor_fg = "#1a1a1a",
  cursor_border = "#DCD7BA",

  -- Selection colors
  selection_fg = "#DCD7BA",
  selection_bg = "#283c57",

  -- The color of the scrollbar "thumb" (the draggable portion)
  scrollbar_thumb = "#545454",

  -- The color of the split lines between panes
  split = "#1b1b1b",

  -- ANSI color palette
  ansi = {
    "#1F1F28", -- black
    "#e14c4c", -- red
    "#89c471", -- green
    "#ffd13b", -- yellow
    "#5690ac", -- blue
    "#957FB8", -- magenta
    "#9CABCA", -- cyan
    "#DCD7BA", -- white
  },

  brights = {
    "#2A2A37", -- bright black
    "#FF5D62", -- bright red
    "#aed97a", -- bright green
    "#E6C384", -- bright yellow
    "#81c0da", -- bright blue
    "#D27E99", -- bright magenta
    "#A3D4D5", -- bright cyan
    "#DCD7BA", -- bright white
  },

  -- Indexed colors for additional terminal colors
  indexed = {
    [16] = "#FFA066", -- Extended color 1
    [17] = "#FF5D62", -- Extended color 2
  },

  -- Tab bar colors
  tab_bar = {
    -- The color of the strip that goes along the top of the window
    background = "#181818",

    -- The active tab is the one that has focus in the window
    active_tab = {
      -- The color of the background area for the tab
      bg_color = "#202020",
      -- The color of the text for the tab
      fg_color = "#DCD7BA",
      -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
      -- label shown for this tab.
      intensity = "Normal",
      -- Specify whether you want "None", "Single" or "Double" underline for
      -- label shown for this tab.
      underline = "None",
      -- Specify whether you want the text to be italic (true) or not (false)
      italic = false,
      -- Specify whether you want the text to be rendered with strikethrough (true)
      -- or not.
      strikethrough = false,
    },

    -- Inactive tabs are the tabs that do not have focus
    inactive_tab = {
      bg_color = "#2e2e2e",
      fg_color = "#C8C093",
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over inactive tabs
    inactive_tab_hover = {
      bg_color = "#373737",
      fg_color = "#DCD7BA",
      italic = false,
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = "#282828",
      fg_color = "#C8C093",
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over the new tab button
    new_tab_hover = {
      bg_color = "#353535",
      fg_color = "#DCD7BA",
      italic = false,
    },
  },
}

return nightingale
