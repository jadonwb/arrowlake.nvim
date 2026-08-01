local M = {}

M.url = "https://github.com/folke/sidekick.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SidekickDiffContext = "DiffChange",
    SidekickDiffAdd     = "DiffAdd",
    SidekickDiffDelete  = "DiffDelete",
    SidekickSignAdd     = { fg = c.git.add },
    SidekickSignChange  = { fg = c.git.change },
    SidekickSignDelete  = { fg = c.git.delete },
  }
  return ret
end

return M
