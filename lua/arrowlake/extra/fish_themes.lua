local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fishColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      fishColors[k] = v:gsub("^#", "")
    end
  end

  local fish = util.template(
    [[
# Arrowlake

# Syntax Highlighting Colors
fish_color_normal ${fg}
fish_color_command ${cyan}
fish_color_keyword ${magenta}
fish_color_quote ${yellow}
fish_color_redirection ${fg}
fish_color_end ${orange}
fish_color_option ${magenta}
fish_color_error ${red}
fish_color_param ${purple}
fish_color_comment ${foregrounds.comment}
fish_color_selection --background=${backgrounds.visual}
fish_color_search_match --background=${backgrounds.visual}
fish_color_operator ${green}
fish_color_escape ${magenta}
fish_color_autosuggestion ${foregrounds.comment}

# Completion Pager Colors
fish_pager_color_progress ${foregrounds.comment}
fish_pager_color_prefix ${cyan}
fish_pager_color_completion ${fg}
fish_pager_color_description ${foregrounds.comment}
fish_pager_color_selected_background --background=${backgrounds.visual}
]],
    fishColors
  )

  return fish
end

return M
