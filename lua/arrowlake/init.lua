local config = require("arrowlake.config")

local M = {}

---@param style? string
---@return "dark"|"light"
local function normalize(style)
  return style == "light" and "light" or "dark"
end

---Load the colorscheme.
---@param opts? { style?: "dark"|"light" }
function M.load(opts)
  opts = config.extend(opts)
  local style = opts.style

  -- Neovim re-sources the active colorscheme when 'background' changes. If the
  -- explicit style no longer matches, follow the background instead of forcing
  -- it back and looping.
  if style and vim.g.colors_name == "arrowlake-" .. style and vim.o.background ~= style then
    style = nil
  end

  style = normalize(style or (vim.o.background == "light" and "light" or "dark"))

  if vim.o.background ~= style then
    vim.o.background = style
  end

  require("arrowlake.omarchy").setup()

  return require("arrowlake.theme").setup(style, opts)
end

---Toggle transparency on/off, and re-apply the theme.
function M.toggle_transparency()
  config.options.transparent = not config.options.transparent

  M.load({ style = vim.o.background == "light" and "light" or "dark" })
  vim.api.nvim_exec_autocmds("ColorScheme", {})

  vim.notify(
    config.options.transparent and "Transparency enabled" or "Transparency disabled",
    config.options.transparent and vim.log.levels.INFO or vim.log.levels.WARN,
    { title = "Arrowlake" }
  )
end

---@param opts? arrowlake.Config
function M.setup(opts)
  config.setup(opts)
  require("arrowlake.omarchy").setup()
end

return M
