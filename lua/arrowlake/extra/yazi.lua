local M = {}

--- Serialize a Yazi style spec in a deterministic key order.
---@param attrs table
---@return string
local function spec(attrs)
  local parts = {}
  for _, key in ipairs({ "fg", "bg", "bold", "italic", "underline", "reversed" }) do
    local value = attrs[key]
    if value ~= nil then
      if key == "fg" or key == "bg" then
        parts[#parts + 1] = ('%s = "%s"'):format(key, value)
      else
        parts[#parts + 1] = ("%s = %s"):format(key, tostring(value))
      end
    end
  end
  return "{ " .. table.concat(parts, ", ") .. " }"
end

---@param c ColorScheme
local function theme(c)
  local t = {}
  local function line(s)
    t[#t + 1] = s
  end
  local function blank()
    t[#t + 1] = ""
  end

  line("[app]")
  line("overall = {}")
  blank()

  line("[mgr]")
  line(("cwd = %s"):format(spec { fg = c.ui.path }))
  blank()
  line("# Find")
  line(("find_keyword  = %s"):format(spec { fg = c.backgrounds.dark, bg = c.focus, bold = true }))
  line(("find_position = %s"):format(spec { fg = c.diagnostics.info, bg = c.backgrounds.search, bold = true }))
  blank()
  line("# Marker")
  line(("marker_copied   = %s"):format(spec { fg = c.diagnostics.success, bg = c.diagnostics.success }))
  line(("marker_cut      = %s"):format(spec { fg = c.diagnostics.error, bg = c.diagnostics.error }))
  line(("marker_marked   = %s"):format(spec { fg = c.ui.attention, bg = c.ui.attention }))
  line(("marker_selected = %s"):format(spec { fg = c.secondary, bg = c.secondary }))
  blank()
  line("# Count")
  line(("count_copied   = %s"):format(spec { fg = c.foregrounds.normal, bg = c.diagnostics.success }))
  line(("count_cut      = %s"):format(spec { fg = c.foregrounds.normal, bg = c.diagnostics.error }))
  line(("count_selected = %s"):format(spec { fg = c.backgrounds.normal, bg = c.secondary }))
  blank()
  line("# Border")
  line('border_symbol = "│"')
  line(("border_style  = %s"):format(spec { fg = c.border.color }))
  blank()
  line("# Highlighting")
  line('syntect_theme = ""')
  blank()

  line("[tabs]")
  line(("active   = %s"):format(spec { fg = c.backgrounds.normal, bg = c.ui.header, bold = true }))
  line(("inactive = %s"):format(spec { fg = c.foregrounds.muted, bg = c.backgrounds.darker }))
  blank()

  line("[mode]")
  line(("normal_main = %s"):format(spec { fg = c.backgrounds.normal, bg = c.status.normal, bold = true }))
  line(("normal_alt  = %s"):format(spec { fg = c.status.normal, bg = c.backgrounds.darker }))
  line(("select_main = %s"):format(spec { fg = c.backgrounds.normal, bg = c.status.visual, bold = true }))
  line(("select_alt  = %s"):format(spec { fg = c.status.visual, bg = c.backgrounds.darker }))
  line(("unset_main  = %s"):format(spec { fg = c.backgrounds.normal, bg = c.status.replace, bold = true }))
  line(("unset_alt   = %s"):format(spec { fg = c.status.replace, bg = c.backgrounds.darker }))
  blank()

  line("[indicator]")
  line(("parent  = %s"):format(spec { bg = c.backgrounds.hover }))
  line(("current = %s"):format(spec { bg = c.backgrounds.hover }))
  line(("preview = %s"):format(spec { underline = true }))
  blank()

  line("[status]")
  line(("overall   = %s"):format(spec { fg = c.foregrounds.normal, bg = c.backgrounds.dark }))
  line('sep_left  = { open = "", close = "" }')
  line('sep_right = { open = "", close = "" }')
  blank()
  line("# Permissions")
  line(("perm_sep   = %s"):format(spec { fg = c.foregrounds.muted }))
  line(("perm_type  = %s"):format(spec { fg = c.syntax.type }))
  line(("perm_read  = %s"):format(spec { fg = c.syntax.constant }))
  line(("perm_write = %s"):format(spec { fg = c.diagnostics.error }))
  line(("perm_exec  = %s"):format(spec { fg = c.diagnostics.success }))
  blank()
  line("# Progress")
  line(("progress_label  = %s"):format(spec { fg = c.foregrounds.normal, bold = true }))
  line(("progress_normal = %s"):format(spec { fg = c.backgrounds.highlight, bg = c.backgrounds.highlight }))
  line(("progress_error  = %s"):format(spec { fg = c.diagnostics.error, bg = c.backgrounds.highlight }))
  blank()

  line("[which]")
  line(("border          = %s"):format(spec { fg = c.border.color }))
  line("cols            = 3")
  line(("mask            = %s"):format(spec { bg = c.backgrounds.darker }))
  line(("cand            = %s"):format(spec { fg = c.ui.attention }))
  line(("rest            = %s"):format(spec { fg = c.foregrounds.muted }))
  line(("desc            = %s"):format(spec { fg = c.foregrounds.muted }))
  line('separator       = "  "')
  line(("separator_style = %s"):format(spec { fg = c.foregrounds.muted }))
  blank()

  line("[confirm]")
  line(("border     = %s"):format(spec { fg = c.border.color }))
  line(("title      = %s"):format(spec { fg = c.border.color }))
  line("body       = {}")
  line("list       = {}")
  line(("btn_yes    = %s"):format(spec { bg = c.backgrounds.highlight }))
  line("btn_no     = {}")
  line('btn_labels = [ "  [Y]es  ", "  (N)o  " ]')
  blank()

  line("[spot]")
  line(("border   = %s"):format(spec { fg = c.border.color }))
  line(("title    = %s"):format(spec { fg = c.border.color }))
  line(("tbl_col  = %s"):format(spec { fg = c.ui.header }))
  line(("tbl_cell = %s"):format(spec { fg = c.foregrounds.normal, bg = c.backgrounds.highlight }))
  blank()

  line("[notify]")
  line(("title_info  = %s"):format(spec { fg = c.diagnostics.info }))
  line(("title_warn  = %s"):format(spec { fg = c.diagnostics.warning }))
  line(("title_error = %s"):format(spec { fg = c.diagnostics.error }))
  blank()
  line("# Icons")
  line('icon_info  = ""')
  line('icon_warn  = ""')
  line('icon_error = ""')
  blank()

  line("[pick]")
  line(("border   = %s"):format(spec { fg = c.border.color }))
  line(("active   = %s"):format(spec { fg = c.foregrounds.normal, bg = c.backgrounds.highlight }))
  line("inactive = {}")
  blank()

  line("[input]")
  line(("border   = %s"):format(spec { fg = c.border.color }))
  line(("title    = %s"):format(spec { fg = c.border.color }))
  line(("value    = %s"):format(spec { fg = c.foregrounds.normal }))
  line(("selected = %s"):format(spec { bg = c.backgrounds.highlight }))
  blank()

  line("[cmp]")
  line(("border   = %s"):format(spec { fg = c.border.color }))
  line(("active   = %s"):format(spec { fg = c.foregrounds.normal, bg = c.backgrounds.highlight }))
  line("inactive = {}")
  blank()
  line("# Icons")
  line('icon_file    = ""')
  line('icon_folder  = ""')
  line('icon_command = ""')
  blank()

  line("[tasks]")
  line(("border  = %s"):format(spec { fg = c.border.color }))
  line(("title   = %s"):format(spec { fg = c.border.color }))
  line(("hovered = %s"):format(spec { fg = c.foregrounds.normal, bg = c.backgrounds.highlight }))
  blank()

  line("[help]")
  line(("border  = %s"):format(spec { fg = c.border.color }))
  line(("chord   = %s"):format(spec { fg = c.syntax.keyword }))
  line(("action  = %s"):format(spec { fg = c.foregrounds.normal }))
  line(("hovered = %s"):format(spec { fg = c.foregrounds.normal, bg = c.backgrounds.highlight }))
  blank()

  line("[filetype]")
  line("rules = [")
  line("\t# Images")
  line(('\t{ mime = "image/*", fg = "%s" },'):format(c.syntax.constant))
  line("\t# Media")
  line(('\t{ mime = "{audio,video}/*", fg = "%s" },'):format(c.ui.attention))
  line("\t# Archives")
  line(('\t{ mime = "application/*zip", fg = "%s" },'):format(c.diagnostics.error))
  line(('\t{ mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}", fg = "%s" },'):format(c.diagnostics.error))
  line("\t# Documents")
  line(('\t{ mime = "application/{pdf,doc,rtf,vnd.*}", fg = "%s" },'):format(c.diagnostics.hint))
  line("\t# Special files")
  line(('\t{ url = "*", is = "orphan", bg = "%s" },'):format(c.diagnostics.error))
  line(('\t{ url = "*", is = "exec", fg = "%s" },'):format(c.diagnostics.success))
  line("\t# Fallback")
  line(('\t{ url = "*/", fg = "%s" },'):format(c.ui.path))
  line(('\t{ url = "*", fg = "%s" }'):format(c.foregrounds.normal))
  line("]")

  return table.concat(t, "\n") .. "\n"
end

--- @param colors ColorScheme
function M.generate(colors)
  local toml = theme(colors)

  local style = colors._style or "dark"
  local flavor_dir = "arrowlake-" .. style .. ".yazi"
  local artifacts = {
    { path = flavor_dir .. "/flavor.toml", content = toml },
    { path = flavor_dir .. "/tmtheme.xml", content = require("arrowlake.extra.sublime").generate(colors) },
  }

  return toml, artifacts
end

return M
