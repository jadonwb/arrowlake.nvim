local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type arrowlake.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.fg_gutter, nocombine = true },
    IndentLineCurrent          = { fg = c.focus, nocombine = true },
  }
end

return M
