local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors = vim.deepcopy(colors)
  -- Bookokrat expects bare hex colors (no # prefix)
  for key, value in pairs(colors) do
    if type(value) == "string" and value:sub(1, 1) == "#" then
      colors[key] = value:sub(2)
    end
  end

  local bookokrat = util.template(
    [[
# ${_style_name} theme for bookokrat
- scheme: "${_style_name}"
  author: "Jadon Brutcher"
  base00: "${bg}"
  base01: "${bg_dark}"
  base02: "${selection}"
  base03: "${foregrounds.comment}"
  base04: "${fg_darker}"
  base05: "${fg}"
  base06: "${fg_dark}"
  base07: "${primary}"
  base08: "${red}"
  base09: "${orange}"
  base0A: "${yellow}"
  base0B: "${green}"
  base0C: "${cyan}"
  base0D: "${blue}"
  base0E: "${purple}"
  base0F: "${magenta}"
]],
    colors
  )
  return bookokrat
end

return M
