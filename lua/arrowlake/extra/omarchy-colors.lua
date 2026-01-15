local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local theme = util.template(
    [[
accent = "${primary}"
cursor = "${fg}"
foreground = "${fg}"
background = "${bg}"
selection_foreground = "${fg}"
selection_background = "${bg_visual}"

color0 = "${terminal.black}"
color1 = "${terminal.red}"
color2 = "${terminal.green}"
color3 = "${terminal.yellow}"
color4 = "${terminal.blue}"
color5 = "${terminal.magenta}"
color6 = "${terminal.cyan}"
color7 = "${terminal.white}"
color8 = "${terminal.black_bright}"
color9 = "${terminal.red_bright}"
color10 = "${terminal.green_bright}"
color11 = "${terminal.yellow_bright}"
color12 = "${terminal.blue_bright}"
color13 = "${terminal.magenta_bright}"
color14 = "${terminal.cyan_bright}"
color15 = "${terminal.white_bright}"
]],
    colors
  )
  return theme
end

return M
