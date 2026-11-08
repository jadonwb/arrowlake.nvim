local Config = require("arrowlake.config")
local Util = require("arrowlake.util")

local M = {}

-- Every group file this theme ships. Plugin groups are cheap table merges, so
-- loading them unconditionally avoids lazy-load timing bugs where a plugin's
-- highlights are missing because it was not loaded when the colorscheme ran.
-- lspconfig/plugin detection is intentionally not part of the theme.
-- stylua: ignore
M.groups = {
  "base",
  "blink",
  "diffview-plus",
  "fff",
  "flash",
  "gitsigns",
  "grug-far",
  "kinds",
  "lazy",
  "mason",
  "mini_hipatterns",
  "mini_icons",
  "mini_surround",
  "render-markdown",
  "semantic_tokens",
  "snacks",
  "todo-comments",
  "treesitter",
  "treesitter-context",
  "trouble",
  "which-key",
  "yazi",
}

---@param name string
---@return { get: arrowlake.HighlightsFn, url: string }
function M.get_group(name)
  return require("arrowlake.groups." .. name)
end

---@param name string
---@param colors ColorScheme
---@param opts arrowlake.Config
function M.get(name, colors, opts)
  return M.get_group(name).get(colors, opts)
end

---@param colors ColorScheme
---@param opts arrowlake.Config
---@return arrowlake.Highlights groups
---@return string[] names
function M.setup(colors, opts)
  opts = Config.extend(opts)

  local names = vim.deepcopy(M.groups)
  table.sort(names)

  local cache_key = colors._style or "dark"
  local cache = opts.cache and Util.cache.read(cache_key)

  local inputs = {
    format = 2,
    colors = colors,
    groups = names,
    version = Config.version,
    source = opts.cache and Util.source_fingerprint() or false,
    transparent = opts.transparent,
  }

  local ret = cache and vim.deep_equal(inputs, cache.inputs) and cache.groups

  if not ret then
    ret = {}
    for _, group in ipairs(names) do
      for k, v in pairs(M.get(group, colors, opts)) do
        ret[k] = v
      end
    end
    Util.resolve(ret)
    if opts.cache then
      Util.cache.write(cache_key, { groups = ret, inputs = inputs })
    end
  end

  return ret, names
end

return M
