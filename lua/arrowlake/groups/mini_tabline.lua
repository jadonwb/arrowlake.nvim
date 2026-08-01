local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/echasnovski/mini.tabline"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniTablineCurrent         = { fg = c.fg, bg = c.fg_gutter },
    MiniTablineFill            = { bg = c.black },
    MiniTablineHidden          = { fg = c.comment, bg = c.status.bg },
    MiniTablineModifiedCurrent = { fg = c.warning, bg = c.fg_gutter },
    MiniTablineModifiedHidden  = { bg = c.status.bg, fg = Util.blend_bg(c.warning, 0.7) },
    MiniTablineModifiedVisible = { fg = c.warning, bg = c.status.bg },
    MiniTablineTabpagesection  = { bg = c.fg_gutter, fg = c.none },
    MiniTablineVisible         = { fg = c.fg, bg = c.status.bg },
  }
end

return M
