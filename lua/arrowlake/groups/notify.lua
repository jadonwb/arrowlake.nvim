local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    NotifyBackground  = { fg = c.fg, bg = c.bg_float },
    NotifyDEBUGBody   = { fg = c.fg, bg = c.bg_float },
    NotifyDEBUGBorder = { fg = Util.blend_bg(c.comment, 0.3), bg = c.bg_float },
    NotifyDEBUGIcon   = { fg = c.comment },
    NotifyDEBUGTitle  = { fg = c.comment },
    NotifyERRORBody   = { fg = c.fg, bg = c.bg_float },
    NotifyERRORBorder = { fg = Util.blend_bg(c.error, 0.3), bg = c.bg_float },
    NotifyERRORIcon   = { fg = c.error },
    NotifyERRORTitle  = { fg = c.error },
    NotifyINFOBody    = { fg = c.fg, bg = c.bg_float },
    NotifyINFOBorder  = { fg = Util.blend_bg(c.info, 0.3), bg = c.bg_float },
    NotifyINFOIcon    = { fg = c.info },
    NotifyINFOTitle   = { fg = c.info },
    NotifyTRACEBody   = { fg = c.fg, bg = c.bg_float },
    NotifyTRACEBorder = { fg = Util.blend_bg(c.trace, 0.3), bg = c.bg_float },
    NotifyTRACEIcon   = { fg = c.trace },
    NotifyTRACETitle  = { fg = c.trace },
    NotifyWARNBody    = { fg = c.fg, bg = c.bg_float },
    NotifyWARNBorder  = { fg = Util.blend_bg(c.warning, 0.3), bg = c.bg_float },
    NotifyWARNIcon    = { fg = c.warning },
    NotifyWARNTitle   = { fg = c.warning },
  }
end

return M
