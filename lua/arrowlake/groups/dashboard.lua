local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.ui.header },
    DashboardFooter           = { fg = c.ui.footer },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.syntax.link },
    DashboardProjectTitleIcon = { fg = c.focus },
    DashboardProjectIcon      = { fg = c.focus },
    DashboardMruTitle         = { fg = c.syntax.link },
    DashboardMruIcon          = { fg = c.syntax.keyword },
    DashboardFiles            = { fg = c.ui.path },
    DashboardShortCutIcon     = { fg = c.syntax.functions },
    -- Doome theme
    DashboardDesc             = { fg = c.syntax.link },
    DashboardKey              = { fg = c.focus },
    DashboardIcon             = { fg = c.syntax.link },
    DashboardShortCut         = { fg = c.syntax.link },
  }
end

return M
