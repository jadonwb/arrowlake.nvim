local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/echasnovski/mini.tabline"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniTablineCurrent         = { fg = c.foregrounds.normal, bg = c.backgrounds.highlight },
    MiniTablineFill            = { bg = c.backgrounds.tabline_fill },
    MiniTablineHidden          = { fg = c.foregrounds.comment, bg = c.backgrounds.tabline },
    MiniTablineModifiedCurrent = { fg = c.diagnostics.warning, bg = c.backgrounds.highlight },
    MiniTablineModifiedHidden  = { bg = c.backgrounds.tabline, fg = Util.blend_bg(c.diagnostics.warning, 0.7) },
    MiniTablineModifiedVisible = { fg = c.diagnostics.warning, bg = c.backgrounds.tabline },
    MiniTablineTabpagesection  = { bg = c.backgrounds.highlight, fg = c.none },
    MiniTablineVisible         = { fg = c.foregrounds.normal, bg = c.status.bg },
  }
end

return M
