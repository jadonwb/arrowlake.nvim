local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.search_bg = colors.bg_search
  colors.pmenusel = colors.bg_highlight
  local yazi = util.template(
    [[
[mgr]
# NOTE: can be combined with tmTheme (sublime colorshceme file) for preview code highlight
# syntect_theme = "path/to/tmTheme"

cwd = { fg = "${fg_dark}", italic = true }

# Hovered
hovered         = { bg = "${bg_hover}" }
preview_hovered = { bg = "${bg_hover}" }

# Find
 find_keyword  = { fg = "${bg_dark}", bg = "${focus}", bold = true }
find_position = { fg = "${info}", bg = "${search_bg}", bold = true }

# Marker
 marker_copied   = { fg = "${success}", bg = "${success}" }
 marker_cut      = { fg = "${error}", bg = "${error}" }
 marker_marked   = { fg = "${attention}", bg = "${attention}" }
 marker_selected = { fg = "${secondary}", bg = "${secondary}" }

# Count
 count_copied   = { fg = "${bg_dark}", bg = "${success}" }
 count_cut      = { fg = "${bg_dark}", bg = "${error}" }
 count_selected = { fg = "${bg_dark}", bg = "${secondary}" }

# Border
border_symbol = "│"
border_style  = { fg = "${border_color}" }

# Tab
[tabs]
 active   = { fg = "${black}", bg = "${title}" }
 inactive = { fg = "${title}", bg = "${fg_gutter}" }

[mode]
 normal_main = { fg = "${black}", bg = "${title}", bold = true }
 normal_alt  = { fg = "${title}", bg = "${fg_gutter}" }

 select_main = { fg = "${black}", bg = "${attention}", bold = true }
 select_alt  = { fg = "${attention}", bg = "${fg_gutter}" }

 unset_main  = { fg = "${black}", bg = "${keyword}", bold = true }
 unset_alt   = { fg = "${keyword}", bg = "${fg_gutter}" }

[status]
overall   = { fg = "${fg}", bg = "${bg_dark}" }
sep_left  = { open = "", close = "" }
sep_right = { open = "", close = "" }

# Progress
progress_label  = { fg = "${fg}", bold = true }
progress_normal = { fg = "${selection}", bg = "${bg_highlight}" }
 progress_error  = { fg = "${error}", bg = "${bg_highlight}" }

# Permissions
 perm_type  = { fg = "${type}" }
perm_read  = { fg = "${yellow}" }
 perm_write = { fg = "${error}" }
 perm_exec  = { fg = "${success}" }
perm_sep   = { fg = "${terminal_black}" }

[pick]
border   = { fg = "${border_color}" }
active   = { fg = "${fg}",  bg = "${bg_visual}" }
inactive = { fg = "${fg}" }

# Input
[input]
 border   = { fg = "${border_color}" }
 title    = { fg = "${border_color}" }
value    = { fg = "${purple}" }
selected = { bg = "${bg_visual}" }

# Completion
[cmp]
 border   = { fg = "${border_color}" }
active   = { fg = "${fg}", bg = "${pmenusel}" }
inactive = { fg = "${fg}" }

icon_file    = ""
icon_folder  = ""
icon_command = ""

# Tasks
[tasks]
border  = { fg = "${border_color}" }
title   = { fg = "${border_color}" }
hovered = { fg = "${fg}", bg = "${bg_hover}" }

# Which
[which]
cols            = 3
mask            = { bg = "${bg_dark}" }
cand            = { fg = "${cyan}" }
rest            = { fg = "${blue}" }
desc            = { fg = "${magenta}" }
separator       = " ➜ "
separator_style = { fg = "${comment}" }

# Confirm
[confirm]
 border  = { fg = "${border_color}" }
title   = { fg = "${border_color}" }
content = {}
list    = {}
btn_yes = { bg = "${bg_visual}" }
btn_no  = {}
btn_labels = [ "  [Y]es  ", "  (N)o  " ]

# Spot
[spot]
border  = { fg = "${border_color}" }
title   = { fg = "${border_color}" }

# Notify
[notify]
title_info  = { fg = "${info}" }
title_warn  = { fg = "${warning}" }
title_error = { fg = "${error}" }

icon_error = ""
icon_warn = ""
icon_info = ""

# Help
[help]
 on      = { fg = "${success}" }
 run     = { fg = "${attention}" }
 desc    = { fg = "${link}" }
hovered = { bg = "${bg_hover}" }
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
	{ name = "*/", fg = "${title}" },
	{ name = "*", fg = "${fg}" }
]
    ]],
    colors
  )
  return yazi
end

return M
