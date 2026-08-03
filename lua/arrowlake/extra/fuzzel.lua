local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fuzzelColors = {}
  colors.backgrounds.search = colors.backgrounds.highlight
  for k, v in pairs(colors) do
    if type(v) == "string" then
      fuzzelColors[k] = v:gsub("^#", "") .. "ff"
    end
  end

  local fuzzel = util.template(
    [[
[colors]
background=${backgrounds.float}
text=${fg}
match=${secondary}
selection=${backgrounds.search}
selection-match=${secondary}
selection-text=${fg}
border=${border.color}
]],
    fuzzelColors
  )
  return fuzzel
end

return M
