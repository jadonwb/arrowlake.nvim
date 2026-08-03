local M = {}

M.url = "https://github.com/folke/todo-comments.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- TODO: move the todo comments plugin config into here instead (just the keywords and colors)
    ArrowlakeCommentTodo = { fg = c.diagnostics.todo },
    ArrowlakeCommentFixme = {fg = c.diagnostics.error },
    ArrowlakeCommentWarn = { fg = c.diagnostics.warning },
    ArrowlakeCommentNote = { fg = c.diagnostics.hint },
    ArrowlakeCommentPerf = { fg = c.syntax.keyword }, -- TODO: make a comment class/table with first class perf
    ArrowlakeCommentTest = { fg = c.syntax.parameter }, -- TODO: same
  }
end

return M
