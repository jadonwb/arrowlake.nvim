local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentBlanklineChar        = { fg = c.foregrounds.indent, nocombine = true },
    IndentBlanklineContextChar = { fg = c.focus, nocombine = true },
    IblIndent                  = { fg = c.foregrounds.indent, nocombine = true },
    IblScope                   = { fg = c.focus, nocombine = true },
  }
end

return M
