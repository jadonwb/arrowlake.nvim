local config = require("arrowlake.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? arrowlake.Config
function M.load(opts)
  opts = require("arrowlake.config").extend(opts)
  local bg = vim.o.background
  local style_bg = opts.style == "light" and "light" or "dark"

  if bg ~= style_bg then
    if vim.g.colors_name == "arrowlake-" .. opts.style then
      opts.style = bg == "light" and (M.styles.light or "light") or (M.styles.dark or "dark")
    else
      vim.o.background = style_bg
    end
  end
  M.styles[vim.o.background] = opts.style

  return require("arrowlake.theme").setup(opts)
end

--- Toggle transparency on/off, and re-apply the theme.
function M.toggle_transparency()
  local new_val = not config.options.transparent

  -- Lazily initialize M.options from defaults if setup() was never called
  if rawget(config, "options") == nil then
    rawset(config, "options", vim.deepcopy(config.defaults))
  end
  config.options.transparent = new_val

  -- Sync active style so M.load() preserves current light/dark theme
  config.options.style = M.styles[vim.o.background] or config.options.style

  -- Re-apply theme
  M.load()

  -- Notify lualine and other plugins of the colorscheme change
  vim.api.nvim_exec_autocmds("ColorScheme", {})

  vim.notify(
    new_val and "Transparency enabled" or "Transparency disabled",
    new_val and vim.log.levels.INFO or vim.log.levels.WARN,
    { title = "Arrowlake" }
  )
end

M.setup = config.setup

return M
