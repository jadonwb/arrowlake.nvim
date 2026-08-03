local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.foregrounds.indent, nocombine = true },
    IndentLineCurrent          = { fg = c.focus, nocombine = true },
  }
end

return M
