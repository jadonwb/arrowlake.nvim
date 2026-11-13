local M = {}

M.url = "https://github.com/mason-org/mason.nvim"

-- Mason drawn like the editor's dashboards (groups/nv.lua): raised surface,
-- the title and active tab as a solid primary chip, other tabs as muted
-- chips. Highlight (installed, selected) is focus; secondary (pending,
-- outdated) is the attention colour.

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  local hi = c.backgrounds.highlight
  local chip = { fg = c.bg, bg = c.primary, bold = true }
  local muted_chip = { fg = c.foregrounds.darker, bg = hi }

  -- stylua: ignore
  return {
    MasonNormal                      = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    MasonBackdrop                    = { bg = c.backgrounds.darker },

    MasonHeader                      = chip,
    MasonHeaderSecondary             = { fg = c.bg, bg = c.focus, bold = true },

    MasonHighlight                   = { fg = c.focus },
    MasonHighlightBlock              = chip,
    MasonHighlightBlockBold          = chip,
    MasonHighlightSecondary          = { fg = c.ui.attention },
    MasonHighlightBlockSecondary     = { fg = c.bg, bg = c.ui.attention },
    MasonHighlightBlockBoldSecondary = { fg = c.bg, bg = c.ui.attention, bold = true },

    MasonMuted                       = { fg = c.foregrounds.darker },
    MasonMutedBlock                  = muted_chip,
    MasonMutedBlockBold              = vim.tbl_extend("force", muted_chip, { bold = true }),

    MasonLink                        = { fg = c.syntax.link, underline = true },
    MasonHeading                     = { fg = c.foregrounds.normal, bold = true },
    MasonError                       = { fg = c.diagnostics.error },
    MasonWarning                     = { fg = c.diagnostics.warning },
  }
end

return M
