local M = {}

M.url = "https://github.com/zbirenbaum/copilot.lua"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CopilotAnnotation = { fg = c.foregrounds.muted },
    CopilotSuggestion = { fg = c.foregrounds.muted },
  }
  return ret
end

return M
