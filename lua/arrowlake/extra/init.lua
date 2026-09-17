local Util = require("arrowlake.util")

local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string, subdir?: string, sep?:string}>
-- stylua: ignore
M.extras = {
  alacritty        = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
  btop             = { ext = "theme", url = "https://github.com/aristocratos/btop", label = "Btop++" },
  delta            = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
  discord          = { ext = "css", url ="https://betterdiscord.app/", label = "(Better-)Discord"},
  eza              = { ext = "yml", url = "https://eza.rocks", label = "eza" },
  foot             = { ext = "ini", url = "https://codeberg.org/dnkl/foot", label = "Foot" },
  fzf              = { ext = "sh", url = "https://github.com/junegunn/fzf", label = "Fzf" },
  ghostty          = { ext = "", url = "https://github.com/ghostty-org/ghostty", label = "Ghostty" },
  gnome_terminal   = { ext = "dconf", url = "https://gitlab.gnome.org/GNOME/gnome-terminal", label = "GNOME Terminal" },
  kitty            = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty" },
  lazygit          = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
  lua              = { ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing" },
  opencode         = { ext = "json", url = "https://github.com/sst/opencode", label = "opencode" },
  ["omarchy-colors"] = { ext = "conf", url = "https://omarchy.org", label = "Omarchy Colors" },
  sublime          = { ext = "tmTheme", url = "https://www.sublimetext.com/docs/themes", label = "Sublime Text" },
  vim              = { ext = "vim", url = "https://vimhelp.org/", label = "Vim", subdir = "colors", sep = "-" },
  vimium           = { ext = "css", url = "https://vimium.github.io/", label = "Vimium" },
  wezterm          = { ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html", label = "WezTerm" },
  yazi             = { ext = "toml", url = "https://github.com/sxyazi/yazi", label = "Yazi" },
}

--- Validate an additional artifact path so generators cannot write outside
--- the extra's output directory.
---@param path string
---@return boolean ok
---@return string? err
local function is_safe_artifact_path(path)
  if type(path) ~= "string" or path == "" then
    return false, "artifact path must be a non-empty string"
  end
  if path:sub(1, 1) == "/" or path:sub(1, 1) == "\\" or path:match("^%a:[/\\]") then
    return false, "artifact path must be relative: " .. path
  end
  for part in path:gmatch("[^/\\]+") do
    if part == ".." then
      return false, "artifact path must not traverse parents: " .. path
    end
  end
  return true
end

function M.setup()
  local arrowlake = require("arrowlake.theme")
  vim.o.background = "dark"

  -- map of style to style name
  local styles = {
    dark = "",
    light = " Light",
  }

  ---@type string[]
  local names = vim.tbl_keys(M.extras)
  table.sort(names)

  -- arrowlake.setup({ plugins = { all = true } })
  for _, extra in ipairs(names) do
    local info = M.extras[extra]
    local plugin = require("arrowlake.extra." .. extra)
    for style, style_name in pairs(styles) do
      local colors, groups, opts = arrowlake.setup({ style = style, plugins = { all = true } })
      local fname = extra
        .. (info.subdir and "/" .. info.subdir .. "/" or "")
        .. "/arrowlake"
        .. (info.sep or "_")
        .. style
        .. "."
        .. info.ext
      fname = string.gsub(fname, "%.$", "") -- remove trailing dot when no extension
      colors["_upstream_url"] = "https://github.com/jadonwb/arrowlake.nvim/raw/main/extras/" .. fname
      colors["_style_name"] = "Arrowlake" .. style_name
      colors["_name"] = "arrowlake_" .. style
      colors["_style"] = style
      print("[write] " .. fname)
      local generated = { plugin.generate(colors, groups, opts) }
      local primary = generated[1]
      local artifacts = generated[2]
      Util.write("extras/" .. fname, primary)
      if artifacts then
        local out_dir = "extras/" .. vim.fn.fnamemodify(fname, ":h")
        for _, artifact in ipairs(artifacts) do
          local ok, err = is_safe_artifact_path(artifact and artifact.path)
          assert(ok, err)
          assert(type(artifact.content) == "string", "artifact content must be a string")
          Util.write(out_dir .. "/" .. artifact.path, artifact.content)
        end
      end
    end
  end
end
M.setup()

return M
