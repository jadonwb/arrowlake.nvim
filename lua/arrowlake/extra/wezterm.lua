local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local wezterm = util.template(
    [[
[colors]
foreground = "${foregrounds.normal}"
background = "${backgrounds.normal}"
cursor_bg = "${foregrounds.normal}"
cursor_border = "${foregrounds.normal}"
cursor_fg = "${backgrounds.normal}"
selection_bg = "${backgrounds.visual}"
selection_fg = "${foregrounds.normal}"
split = "${border.split}"
compose_cursor = "${focus}"
scrollbar_thumb = "${backgrounds.highlight}"

ansi = ["${terminal.black}", "${terminal.red}", "${terminal.green}", "${terminal.yellow}", "${terminal.blue}", "${terminal.magenta}", "${terminal.cyan}", "${terminal.white}"]
brights = ["${terminal.black_bright}", "${terminal.red_bright}", "${terminal.green_bright}", "${terminal.yellow_bright}", "${terminal.blue_bright}", "${terminal.magenta_bright}", "${terminal.cyan_bright}", "${terminal.white_bright}"]

[colors.tab_bar]
inactive_tab_edge = "${border.split}"
background = "${backgrounds.normal}"

[colors.tab_bar.active_tab]
fg_color = "${foregrounds.tabline}"
bg_color = "${backgrounds.tabline}"

[colors.tab_bar.inactive_tab]
fg_color = "${foregrounds.muted}"
bg_color = "${backgrounds.normal}"

[colors.tab_bar.inactive_tab_hover]
fg_color = "${focus}"
bg_color = "${backgrounds.tabline}"
# intensity = "Bold"

[colors.tab_bar.new_tab_hover]
fg_color = "${focus}"
bg_color = "${backgrounds.tabline}"
intensity = "Bold"

[colors.tab_bar.new_tab]
fg_color = "${foregrounds.muted}"
bg_color = "${backgrounds.normal}"

[metadata]
aliases = []
author = "jadonwb"
name = "${_name}"]],
    colors
  )
  return wezterm
end

return M
