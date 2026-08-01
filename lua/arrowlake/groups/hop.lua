local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey = { fg = c.attention, bold = true },
    HopNextKey1 = { fg = c.hint, bold = true },
    HopNextKey2 = { fg = Util.blend_bg(c.hint, 0.6) },
    HopUnmatched = { fg = c.comment },
  }
end

return M
