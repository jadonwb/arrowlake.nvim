local M = {}

M.url = "https://github.com/echasnovski/mini.starter"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = c.diagnostics.warning, italic = true },
    MiniStarterHeader     = { fg = c.ui.header },
    MiniStarterInactive   = { fg = c.foregrounds.comment, style = opts.styles.comments },
    MiniStarterItem       = { fg = c.foregrounds.normal, bg = opts.transparent and c.none or c.backgrounds.normal },
    MiniStarterItemBullet = { fg = c.border.color },
    MiniStarterItemPrefix = { fg = c.diagnostics.warning },
    MiniStarterQuery      = { fg = c.diagnostics.info },
    MiniStarterSection    = { fg = c.ui.label },
  }
end

return M
