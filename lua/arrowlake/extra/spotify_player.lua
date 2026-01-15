local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end

M.template = [=[
[[themes]]
name = "${_style_name}"
[themes.palette]
background = "${bg_dark}"
foreground = "${fg_dark}"
black = "${terminal_black}"
red = "${red}"
green = "${green}"
yellow = "${yellow}"
blue = "${blue}"
magenta = "${magenta}"
cyan = "${cyan}"
white = "${terminal.white}"
bright_black = "${bg}"
bright_red = "${error}"
bright_green = "${terminal.green_bright}"
bright_yellow = "${orange}"
bright_blue = "${terminal.blue_bright}"
bright_magenta = "${terminal.magenta_bright}"
bright_cyan = "${operator}"
bright_white = "${fg}"
]=]

return M
