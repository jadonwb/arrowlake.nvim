local M = {}

M.url = "https://github.com/folke/todo-comments.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- TODO: move the todo comments plugin config into here instead (just the keywords and colors)
    ArrowlakeCommentTodo = { fg = c.todo },
    ArrowlakeCommentFixme = {fg = c.error },
    ArrowlakeCommentWarn = { fg = c.warning },
    ArrowlakeCommentNote = { fg = c.hint },
    ArrowlakeCommentPerf = { fg = c.keyword }, -- TODO: make a comment class/table with first class perf
    ArrowlakeCommentTest = { fg = c.parameter }, -- TODO: same
  }
end

return M
