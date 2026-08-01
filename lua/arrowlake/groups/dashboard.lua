local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.title },
    DashboardFooter           = { fg = c.secondary },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.link },
    DashboardProjectTitleIcon = { fg = c.focus },
    DashboardProjectIcon      = { fg = c.focus },
    DashboardMruTitle         = { fg = c.link },
    DashboardMruIcon          = { fg = c.keyword },
    DashboardFiles            = { fg = c.title },
    DashboardShortCutIcon     = { fg = c.functions },
    -- Doome theme
    DashboardDesc             = { fg = c.link },
    DashboardKey              = { fg = c.focus },
    DashboardIcon             = { fg = c.link },
    DashboardShortCut         = { fg = c.link },
  }
end

return M
