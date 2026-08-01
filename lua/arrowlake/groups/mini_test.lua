local M = {}

M.url = "https://github.com/echasnovski/mini.test"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.error, bold = true },
    MiniTestPass = { fg = c.success, bold = true },
  }
end

return M
