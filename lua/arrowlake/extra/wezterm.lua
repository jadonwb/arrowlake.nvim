local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local wezterm = util.template(
    [[
[colors]
foreground = "${fg}"
background = "${bg}"
cursor_bg = "${fg}"
cursor_border = "${fg}"
cursor_fg = "${bg}"
selection_bg = "${backgrounds.visual}"
selection_fg = "${fg}"
split = "${border.split}"
compose_cursor = "${focus}"
scrollbar_thumb = "${backgrounds.highlight}"

ansi = ["${terminal.black}", "${terminal.red}", "${terminal.green}", "${terminal.yellow}", "${terminal.blue}", "${terminal.magenta}", "${terminal.cyan}", "${terminal.white}"]
brights = ["${terminal.black_bright}", "${terminal.red_bright}", "${terminal.green_bright}", "${terminal.yellow_bright}", "${terminal.blue_bright}", "${terminal.magenta_bright}", "${terminal.cyan_bright}", "${terminal.white_bright}"]

[colors.tab_bar]
inactive_tab_edge = "${border.split}"
background = "${bg}"

[colors.tab_bar.active_tab]
fg_color = "${foregrounds.tabline}"
bg_color = "${backgrounds.tabline}"

[colors.tab_bar.inactive_tab]
fg_color = "${foregrounds.muted}"
bg_color = "${backgrounds.tabline}"

[colors.tab_bar.inactive_tab_hover]
fg_color = "${border.active_title}"
bg_color = "${backgrounds.tabline}"
# intensity = "Bold"

[colors.tab_bar.new_tab_hover]
fg_color = "${border.active_title}"
bg_color = "${backgrounds.tabline}"
intensity = "Bold"

[colors.tab_bar.new_tab]
fg_color = "${foregrounds.muted}"
bg_color = "${bg}"

[metadata]
aliases = []
author = "jadonwb"
name = "${_name}"]],
    colors
  )
  return wezterm
end

return M
