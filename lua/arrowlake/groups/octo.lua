local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/pwntester/octo.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.secondary, bold = true },
    OctoDetailsValue          = "@variable.member",
    OctoDirty                 = { fg = c.warning, bold = true },
    OctoIssueTitle            = { fg = c.keyword, bold = true },
    OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
    OctoStateClosed           = "DiagnosticVirtualTextError",
    OctoStateMerged           = { bg = Util.blend_bg(c.functions, 0.1), fg = c.functions },
    OctoStateOpen             = "DiagnosticVirtualTextHint",
    OctoStatePending          = "DiagnosticVirtualTextWarn",
    OctoStatusColumn          = { fg = c.secondary },

  }
end

return M
