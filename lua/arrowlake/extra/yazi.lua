local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.search_bg = colors.backgrounds.search
  colors.pmenusel = colors.backgrounds.highlight
  local yazi = util.template(
    [[
[mgr]
# NOTE: can be combined with tmTheme (sublime colorshceme file) for preview code highlight
# syntect_theme = "path/to/tmTheme"

cwd = { fg = "${fg_dark}", italic = true }

# Hovered
hovered         = { bg = "${backgrounds.hover}" }
preview_hovered = { bg = "${backgrounds.hover}" }

# Find
 find_keyword  = { fg = "${bg_dark}", bg = "${focus}", bold = true }
find_position = { fg = "${diagnostics.info}", bg = "${search_bg}", bold = true }

# Marker
 marker_copied   = { fg = "${diagnostics.success}", bg = "${diagnostics.success}" }
 marker_cut      = { fg = "${diagnostics.error}", bg = "${diagnostics.error}" }
 marker_marked   = { fg = "${ui.attention}", bg = "${ui.attention}" }
 marker_selected = { fg = "${secondary}", bg = "${secondary}" }

# Count
 count_copied   = { fg = "${bg_dark}", bg = "${diagnostics.success}" }
 count_cut      = { fg = "${bg_dark}", bg = "${diagnostics.error}" }
 count_selected = { fg = "${bg_dark}", bg = "${secondary}" }

# Border
border_symbol = "│"
border_style  = { fg = "${border.color}" }

# Tab
[tabs]
 active   = { fg = "${terminal.black}", bg = "${syntax.title}" }
 inactive = { fg = "${syntax.title}", bg = "${fg_gutter}" }

[mode]
 normal_main = { fg = "${terminal.black}", bg = "${syntax.title}", bold = true }
 normal_alt  = { fg = "${syntax.title}", bg = "${fg_gutter}" }

 select_main = { fg = "${terminal.black}", bg = "${ui.attention}", bold = true }
 select_alt  = { fg = "${ui.attention}", bg = "${fg_gutter}" }

 unset_main  = { fg = "${terminal.black}", bg = "${syntax.keyword}", bold = true }
 unset_alt   = { fg = "${syntax.keyword}", bg = "${fg_gutter}" }

[status]
overall   = { fg = "${fg}", bg = "${bg_dark}" }
sep_left  = { open = "", close = "" }
sep_right = { open = "", close = "" }

# Progress
progress_label  = { fg = "${fg}", bold = true }
progress_normal = { fg = "${selection}", bg = "${backgrounds.highlight}" }
 progress_error  = { fg = "${diagnostics.error}", bg = "${backgrounds.highlight}" }

# Permissions
 perm_type  = { fg = "${syntax.type}" }
perm_read  = { fg = "${yellow}" }
 perm_write = { fg = "${diagnostics.error}" }
 perm_exec  = { fg = "${diagnostics.success}" }
perm_sep   = { fg = "${terminal.black}" }

[pick]
border   = { fg = "${border.color}" }
active   = { fg = "${fg}",  bg = "${backgrounds.visual}" }
inactive = { fg = "${fg}" }

# Input
[input]
 border   = { fg = "${border.color}" }
 title    = { fg = "${border.color}" }
value    = { fg = "${purple}" }
selected = { bg = "${backgrounds.visual}" }

# Completion
[cmp]
 border   = { fg = "${border.color}" }
active   = { fg = "${fg}", bg = "${pmenusel}" }
inactive = { fg = "${fg}" }

icon_file    = ""
icon_folder  = ""
icon_command = ""

# Tasks
[tasks]
border  = { fg = "${border.color}" }
title   = { fg = "${border.color}" }
hovered = { fg = "${fg}", bg = "${backgrounds.hover}" }

# Which
[which]
cols            = 3
mask            = { bg = "${bg_dark}" }
cand            = { fg = "${cyan}" }
rest            = { fg = "${blue}" }
desc            = { fg = "${magenta}" }
separator       = " ➜ "
separator_style = { fg = "${foregrounds.comment}" }

# Confirm
[confirm]
 border  = { fg = "${border.color}" }
title   = { fg = "${border.color}" }
content = {}
list    = {}
btn_yes = { bg = "${backgrounds.visual}" }
btn_no  = {}
btn_labels = [ "  [Y]es  ", "  (N)o  " ]

# Spot
[spot]
border  = { fg = "${border.color}" }
title   = { fg = "${border.color}" }

# Notify
[notify]
title_info  = { fg = "${diagnostics.info}" }
title_warn  = { fg = "${diagnostics.warning}" }
title_error = { fg = "${diagnostics.error}" }

icon_error = ""
icon_warn = ""
icon_info = ""

# Help
[help]
 on      = { fg = "${diagnostics.success}" }
 run     = { fg = "${ui.attention}" }
 desc    = { fg = "${syntax.link}" }
hovered = { bg = "${backgrounds.hover}" }
footer  = { fg = "${fg}", bg = "${bg}" }

[filetype]

rules = [
	# Images
	{ mime = "image/*", fg = "${yellow}" },

	# Media
	{ mime = "{audio,video}/*", fg = "${magenta}" },

	# Archives
	{ mime = "application/*zip", fg = "${red}" },
	{ mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}", fg = "${red}" },

	# Documents
	{ mime = "application/{pdf,doc,rtf,vnd.*}", fg = "${cyan}" },

	# Empty files
	# { mime = "inode/x-empty", fg = "${red}" },

	# Special files
	{ name = "*", is = "orphan", bg = "${red}" },
	{ name = "*", is = "exec"  , fg = "${green}" },

	# Fallback
	{ name = "*/", fg = "${syntax.title}" },
	{ name = "*", fg = "${fg}" }
]
    ]],
    colors
  )
  return yazi
end

return M
