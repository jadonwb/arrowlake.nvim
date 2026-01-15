local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fuzzelColors = {}
  colors.bg_search = colors.bg_highlight
  for k, v in pairs(colors) do
    if type(v) == "string" then
      fuzzelColors[k] = v:gsub("^#", "") .. "ff"
    end
  end

  local fuzzel = util.template(
    [[
[colors]
background=${bg_float}
text=${fg}
match=${secondary}
selection=${bg_search}
selection-match=${secondary}
selection-text=${fg}
border=${border_color}
]],
    fuzzelColors
  )
  return fuzzel
end

return M
