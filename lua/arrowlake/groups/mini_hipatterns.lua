local M = {}

M.url = "https://github.com/echasnovski/mini.hipatterns"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniHipatternsFixme = { fg = c.bg_darker, bg = c.diagnostics.error, bold = true },
    MiniHipatternsHack  = { fg = c.bg_darker, bg = c.diagnostics.warning, bold = true },
    MiniHipatternsNote  = { fg = c.bg_darker, bg = c.diagnostics.hint, bold = true },
    MiniHipatternsTodo  = { fg = c.bg_darker, bg = c.diagnostics.todo, bold = true },
  }
end

return M
