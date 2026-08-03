local util = require("arrowlake.util")

local M = {}

-- @param colors ColorScheme
function M.generate(colors)
  local xfceterm = util.template(
    [[
[Scheme]
Name="${_name}"
ColorBackground=${bg}
ColorForeground=${fg}

ColorSelectionBackground=${backgrounds.visual}
ColorSelection=${fg}

ColorPalette=${terminal.black};${red};${green};${yellow};${blue};${magenta};${cyan};${fg_dark};${terminal.black};${red};${green};${yellow};${blue};${magenta};${cyan};${fg}
]],
    colors
  )
  return xfceterm
end

return M
