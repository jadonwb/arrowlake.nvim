local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    TreesitterContext = { bg = c.backgrounds.code },
  }
end

return M
