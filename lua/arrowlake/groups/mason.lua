local M = {}

M.url = "https://github.com/mason-org/mason.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {

    MasonMuted = { fg = c.foregrounds.muted },
    MasonHighlight = { fg = c.cyan },
    MasonHighlightSecondary = { fg = c.orange },
    MasonMutedBlock = {fg = c.foregrounds.normal, bg = c.foregrounds.muted },
    MasonHighlightBlock = {fg = c.foregrounds.normal, bg = c.cyan},
    MasonHighlightBlockSecondary = {fg = c.foregrounds.normal, bg = c.orange},
    MasonHeader = {fg = c.foregrounds.normal, bg = c.orange},
    MasonMutedBlockBold = { bg = "#888888", bold = true, cterm = { bold = true }, default = true, fg = "#222222" },
    MasonHeaderSecondary = { fg = c.foregrounds.normal, bg = c.cyan },
    MasonHighlightBlockBold = { bg = c.cyan, bold = true, cterm = { bold = true }, default = true, fg = c.foregrounds.normal },
    MasonLink = { fg = c.syntax.link },
    MasonHighlightBlockBoldSecondary = { bg = c.orange, bold = true, cterm = { bold = true }, default = true, fg = c.foregrounds.normal }
  }
end

return M
