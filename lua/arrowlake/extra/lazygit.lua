local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local lazygit = util.template(
    [[
gui:
  nerdFontsVersion: "3"
  theme:
    activeBorderColor:
      - "${focus}"
      - "bold"
    inactiveBorderColor:
      - "${border.color}"
    searchingActiveBorderColor:
      - "${focus}"
      - "bold"
    optionsTextColor:
      - "${blue}"
    selectedLineBgColor:
      - "${backgrounds.visual}"
    cherryPickedCommitFgColor:
      - "${blue}"
    cherryPickedCommitBgColor:
      - "${magenta}"
    markedBaseCommitFgColor:
      - "${blue}"
    markedBaseCommitBgColor:
      - "${yellow}"
    unstagedChangesColor:
      - "${diagnostics.error}"
    defaultFgColor:
      - "${fg}"
]],
    colors
  )
  return lazygit
end

return M
