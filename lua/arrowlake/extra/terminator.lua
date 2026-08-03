local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local terminator = util.template(
    [=[
[[${_style_name}]]
  palette = "${terminal.black}:${red}:${green}:${yellow}:${blue}:${magenta}:${cyan}:${fg_dark}:${terminal.black}:${red}:${green}:${yellow}:${blue}:${magenta}:${cyan}:${purple}"
  background_color = "${bg}"
  foreground_color = "${fg}"
  ]=],
    colors
  )
  return terminator
end

return M
