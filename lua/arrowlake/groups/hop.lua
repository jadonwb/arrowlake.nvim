local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey = { fg = c.ui.attention, bold = true },
    HopNextKey1 = { fg = c.diagnostics.hint, bold = true },
    HopNextKey2 = { fg = Util.blend_bg(c.diagnostics.hint, 0.6) },
    HopUnmatched = { fg = c.foregrounds.comment },
  }
end

return M
