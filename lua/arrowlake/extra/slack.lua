local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template("${border.subtle},${backgrounds.highlight},${magenta},${backgrounds.visual}", colors)
end

return M
