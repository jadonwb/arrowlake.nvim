local Util = require("arrowlake.util")

local M = {}

---@type table<string, arrowlake.Palette|fun(opts:arrowlake.Config):arrowlake.Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("arrowlake.colors." .. style))
  end,
})

---@param opts? arrowlake.Config
---@return ColorScheme colors
---@return arrowlake.Config opts
function M.setup(opts)
  opts = require("arrowlake.config").extend(opts)

  Util.light_brightness = opts.light_brightness

  -- 1. Load base palette, hex colors
  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts)
  end
  ---@cast palette arrowlake.Palette

  -- 2. Merge user's hex overrides
  if opts.colors and next(opts.colors) then
    palette = vim.tbl_deep_extend("force", palette, vim.deepcopy(opts.colors))
  end

  -- 3. Set Util defaults
  Util.bg = palette.bg
  Util.fg = palette.fg

  -- 4. Apply semantic mappings
  if palette.map then
    palette.map(palette)
    palette.map = nil -- Remove function so it doesn't break JSON cache serialization
  end

  local colors = palette

  colors.none = "NONE"
  ---@cast colors ColorScheme

  -- 5. User callback (full access to base + derived + none)
  if opts.on_colors then
    opts.on_colors(colors)
  end

  -- 6. Style overrides for UI surface backgrounds.
  -- nil → keep mapping default | "transparent" → match bg | "normal" → bg_dark | "darker" → bg_darker
  -- When the main bg is transparent (opts.transparent), "transparent" surfaces use c.none
  -- so they truly vanish rather than rendering a visible opaque surface on a transparent window.
  local transparent_bg = opts.transparent and colors.none or colors.bg

  local SURFACES = {
    statusline   = { "backgrounds",      "statusline" },
    popup        = { "backgrounds",      "popup" },
    float        = { "backgrounds",      "float" },
    sidebar      = { "backgrounds",      "sidebar" },
    code         = { "backgrounds",      "code" },
    notification = { "backgrounds",      "notification" },
    tabline      = { "backgrounds",      "tabline" },
    winbar       = { "backgrounds",      "winbar" },
    fold         = { "backgrounds",      "fold" },
  }

  for surface, path in pairs(SURFACES) do
    local value = opts.styles[surface]
    if value then
      local override = value == "transparent" and transparent_bg
        or value == "normal" and colors.bg_dark
        or value == "darker" and colors.bg_darker
      if override then
        local target = colors
        for i = 1, #path - 1 do
          target = target[path[i]]
        end
        target[path[#path]] = override
      end
    end
  end

  return colors, opts
end

return M
