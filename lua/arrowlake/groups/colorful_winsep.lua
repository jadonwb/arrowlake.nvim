local M = {}

M.url = "https://github.com/nvim-zh/colorful-winsep.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    ColorfulWinSep = { fg = c.focus },
  }
  return ret
end

return M
