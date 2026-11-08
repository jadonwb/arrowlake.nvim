-- Reload Neovim when Omarchy switches themes.
--
-- Omarchy itself only rewrites the current theme's neovim.lua and leaves a
-- running Neovim alone. Watch the staged theme directory and apply the
-- colorscheme named by the new theme spec. One directory watcher is enough:
-- omarchy-theme-set replaces the whole current/theme directory, so an event on
-- the containing directory fires even though the file inodes change.

local M = {}

local current = vim.fn.expand("~/.local/state/omarchy/current")

local state = _G.__arrowlake_omarchy
  or {
    did_setup = false,
    handle = nil,
    timer = nil,
    ui_autocmd = nil,
  }
_G.__arrowlake_omarchy = state

---@return string?
local function theme_colorscheme()
  local ok, spec = pcall(dofile, current .. "/theme/neovim.lua")
  if not ok or type(spec) ~= "table" then
    return nil
  end

  for _, entry in ipairs(spec) do
    if type(entry) == "table" then
      local name = entry[1] or entry.name
      if type(name) == "string" and name:match("LazyVim") then
        local opts = entry.opts
        if type(opts) == "table" and type(opts.colorscheme) == "string" then
          return opts.colorscheme
        end
      end
    end
  end
end

local function apply()
  local name = theme_colorscheme()
  if not name then
    return
  end

  if name:match("^arrowlake") then
    local style = name:match("arrowlake%-(%w+)")
    require("arrowlake").load({ style = style or "dark" })
  elseif vim.g.colors_name and vim.g.colors_name:match("^arrowlake") then
    pcall(vim.cmd.colorscheme, name)
  end
end

local function schedule()
  if state.timer then
    state.timer:stop()
    state.timer:close()
  end

  state.timer = vim.defer_fn(function()
    state.timer = nil
    apply()
  end, 250)
end

function M.setup()
  if state.did_setup then
    return
  end

  -- During startup the TUI may not be attached yet; retry on UIEnter.
  if #vim.api.nvim_list_uis() == 0 then
    if not state.ui_autocmd then
      state.ui_autocmd = vim.api.nvim_create_autocmd("UIEnter", {
        once = true,
        callback = function()
          state.ui_autocmd = nil
          M.setup()
        end,
        desc = "Start the Arrowlake Omarchy theme watcher",
      })
    end
    return
  end

  local uv = vim.uv or vim.loop
  if not uv or not uv.new_fs_event or vim.fn.isdirectory(current) == 0 then
    state.did_setup = true
    return
  end

  local handle = uv.new_fs_event()
  if not handle then
    state.did_setup = true
    return
  end

  local ok = handle:start(current, {}, vim.schedule_wrap(function(_, filename)
    if filename and filename ~= "theme" and filename ~= "theme.name" then
      return
    end
    schedule()
  end))

  if ok == 0 then
    state.handle = handle
    state.did_setup = true
  else
    handle:close()
    state.did_setup = true
  end
end

function M.stop()
  if state.ui_autocmd then
    pcall(vim.api.nvim_del_autocmd, state.ui_autocmd)
    state.ui_autocmd = nil
  end
  if state.handle then
    pcall(function()
      if not state.handle:is_closing() then
        state.handle:stop()
        state.handle:close()
      end
    end)
    state.handle = nil
  end
  if state.timer then
    state.timer:stop()
    state.timer:close()
    state.timer = nil
  end
  state.did_setup = false
end

return M
