local M = {}

M.url = "https://github.com/supermaven-inc/supermaven-nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SupermavenSuggestion = { fg = c.foregrounds.muted },
  }
  return ret
end

return M
