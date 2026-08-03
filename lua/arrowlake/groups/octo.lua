local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/pwntester/octo.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.ui.label, bold = true },
    OctoDetailsValue          = "@variable.member",
    OctoDirty                 = { fg = c.diagnostics.warning, bold = true },
    OctoIssueTitle            = { fg = c.syntax.keyword, bold = true },
    OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
    OctoStateClosed           = "DiagnosticVirtualTextError",
    OctoStateMerged           = { bg = Util.blend_bg(c.syntax.functions, 0.1), fg = c.syntax.functions },
    OctoStateOpen             = "DiagnosticVirtualTextHint",
    OctoStatePending          = "DiagnosticVirtualTextWarn",
    OctoStatusColumn          = { fg = c.ui.label },

  }
end

return M
