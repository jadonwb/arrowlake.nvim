local M = {}

M.url = "https://github.com/mason-org/mason.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {

    MasonMuted = { fg = c.muted },
    MasonHighlight = { fg = c.cyan },
    MasonHighlightSecondary = { fg = c.orange },
    MasonMutedBlock = {fg = c.fg, bg = c.muted },
    MasonHighlightBlock = {fg = c.fg, bg = c.cyan},
    MasonHighlightBlockSecondary = {fg = c.fg, bg = c.orange},
    MasonHeader = {fg = c.fg, bg = c.orange},
    MasonMutedBlockBold = { bg = "#888888", bold = true, cterm = { bold = true }, default = true, fg = "#222222" },
    MasonHeaderSecondary = { fg = c.fg, bg = c.cyan },
    MasonHighlightBlockBold = { bg = c.cyan, bold = true, cterm = { bold = true }, default = true, fg = c.fg },
    MasonLink = { fg = c.link },
    MasonHighlightBlockBoldSecondary = { bg = c.orange, bold = true, cterm = { bold = true }, default = true, fg = c.fg }
  }
end

return M
