local M = {}

-- Terminal fzf theme, derived directly from the retained core Arrowlake
-- palette roles so it is independent of any Neovim plugin highlight groups
-- (the fzf-lua integration was removed).

--- @param colors ColorScheme
function M.generate(colors)
  -- fzf shell color option -> core Arrowlake palette role
  local spec = {
    ["fg"] = colors.foregrounds.normal,
    ["bg"] = colors.backgrounds.float,
    ["hl"] = colors.syntax.type_builtin,
    ["bg+"] = colors.backgrounds.highlight,
    ["hl+"] = colors.syntax.type_builtin,
    ["info"] = colors.foregrounds.darker,
    ["border"] = colors.border.color,
    ["separator"] = colors.focus,
    ["scrollbar"] = colors.border.color,
    ["gutter"] = colors.backgrounds.float,
    ["query"] = colors.foregrounds.normal .. ":regular",
    ["prompt"] = colors.syntax.type_builtin,
    ["pointer"] = colors.ui.attention,
    ["marker"] = colors.ui.attention,
    ["spinner"] = colors.ui.attention,
    ["header"] = colors.focus,
  }

  local ret = {}
  for c, color in pairs(spec) do
    assert(type(color) == "string", "color not found for " .. c)
    ret[#ret + 1] = "  --color=" .. c .. ":" .. color .. " \\"
  end
  table.sort(ret)

  return M.template:format(table.concat(ret, "\n"))
end

M.template = [[
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
%s
"
]]

return M