local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CodeiumSuggestion = { fg = c.foregrounds.muted },
  }
  return ret
end

return M
