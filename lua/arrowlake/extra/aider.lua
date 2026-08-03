local util = require("arrowlake.util")

local M = {}

---@param colors ColorScheme
function M.generate(colors)
  colors = vim.deepcopy(colors)
  colors["_pygments_plugin_name"] = colors._name:gsub("_", "-")

  local aider = util.template(
    [[
assistant-output-color: "${fg}"

# see the aider extra README for more information about setting the `code-theme`
# https://github.com/jadonwb/arrowlake.nvim/blob/extras/aider/README.md
# code-theme: ${_pygments_plugin_name}

completion-menu-color: "${fg}"
completion-menu-bg-color: "${backgrounds.float}"
completion-menu-current-color: "${fg}"
completion-menu-current-bg-color: "${backgrounds.highlight}"

tool-error-color: "${diagnostics.error}"
tool-output-color: "${blue}"
tool-warning-color: "${diagnostics.warning}"

user-input-color: "${green}"
]],
    colors
  )

  return aider
end

return M
