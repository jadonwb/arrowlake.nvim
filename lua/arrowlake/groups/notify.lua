local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    NotifyBackground  = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    NotifyDEBUGBody   = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    NotifyDEBUGBorder = { fg = Util.blend_bg(c.foregrounds.comment, 0.3), bg = c.backgrounds.float },
    NotifyDEBUGIcon   = { fg = c.foregrounds.comment },
    NotifyDEBUGTitle  = { fg = c.foregrounds.comment },
    NotifyERRORBody   = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    NotifyERRORBorder = { fg = Util.blend_bg(c.diagnostics.error, 0.3), bg = c.backgrounds.float },
    NotifyERRORIcon   = { fg = c.diagnostics.error },
    NotifyERRORTitle  = { fg = c.diagnostics.error },
    NotifyINFOBody    = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    NotifyINFOBorder  = { fg = Util.blend_bg(c.diagnostics.info, 0.3), bg = c.backgrounds.float },
    NotifyINFOIcon    = { fg = c.diagnostics.info },
    NotifyINFOTitle   = { fg = c.diagnostics.info },
    NotifyTRACEBody   = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    NotifyTRACEBorder = { fg = Util.blend_bg(c.diagnostics.trace, 0.3), bg = c.backgrounds.float },
    NotifyTRACEIcon   = { fg = c.diagnostics.trace },
    NotifyTRACETitle  = { fg = c.diagnostics.trace },
    NotifyWARNBody    = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    NotifyWARNBorder  = { fg = Util.blend_bg(c.diagnostics.warning, 0.3), bg = c.backgrounds.float },
    NotifyWARNIcon    = { fg = c.diagnostics.warning },
    NotifyWARNTitle   = { fg = c.diagnostics.warning },
  }
end

return M
