local util = require("arrowlake.util")

local M = {}

function M.generate(colors)
  local eza = util.template(
    [[
colourful: true

filekinds:
  normal: { foreground: "${fg}" }
  directory: { foreground: "${blue}" }
  symlink: { foreground: "${secondary}" }
  pipe: { foreground: "${terminal_black}" }
  block_device: { foreground: "${yellow}" }
  char_device: { foreground: "${yellow}" }
  socket: { foreground: "${terminal_black}" }
  special: { foreground: "${purple}" }
  executable: { foreground: "${green}" }
  mount_point: { foreground: "${operator}" }

perms:
  user_read: { foreground: "${warning}" }
  user_write: { foreground: "${error}" }
  user_execute_file: { foreground: "${success}" }
  user_execute_other: { foreground: "${success}" }
  group_read: { foreground: "${warning}" }
  group_write: { foreground: "${error}" }
  group_execute: { foreground: "${success}" }
  other_read: { foreground: "${warning}" }
  other_write: { foreground: "${error}" }
  other_execute: { foreground: "${success}" }
  special_user_file: { foreground: "${hint}" }
  special_other: { foreground: "${hint}" }
  attribute: { foreground: "${info}" }

size:
  major: { foreground: "${secondary}" }
  minor: { foreground: "${purple}" }
  number_byte: { foreground: "${fg_dark}" }
  number_kilo: { foreground: "${operator}" }
  number_mega: { foreground: "${secondary}" }
  number_giga: { foreground: "${orange}" }
  number_huge: { foreground: "${attention}" }
  unit_byte: { foreground: "${fg_dark}" }
  unit_kilo: { foreground: "${operator}" }
  unit_mega: { foreground: "${secondary}" }
  unit_giga: { foreground: "${orange}" }
  unit_huge: { foreground: "${attention}" }

users:
  user_you: { foreground: "${selection}" }
  user_root: { foreground: "${magenta}" }
  user_other: { foreground: "${secondary}" }
  group_yours: { foreground: "${operator}" }
  group_root: { foreground: "${magenta}" }
  group_other: { foreground: "${fg}" }

links:
  normal: { foreground: "${operator}" }
  multi_link_file: { foreground: "${secondary}" }

git:
  new: { foreground: "${green}" }
  modified: { foreground: "${magenta}" }
  deleted: { foreground: "${error}" }
  renamed: { foreground: "${secondary}" }
  typechange: { foreground: "${secondary}" }
  ignored: { foreground: "${comment}" }
  conflicted: { foreground: "${orange}" }

git_repo:
  branch_main: { foreground: "${comment}" }
  branch_other: { foreground: "${operator}" }
  git_clean: { foreground: "${bg_highlight}" }
  git_dirty: { foreground: "${magenta}" }

security_context:
  colon: { foreground: "${comment}" }
  user: { foreground: "${operator}" }
  role: { foreground: "${type}" }
  typ: { foreground: "${bg_search}" }
  range: { foreground: "${purple}" }

file_type:
  image: { foreground: "${operator}" }
  video: { foreground: "${operator}" }
  music: { foreground: "${success}" }
  lossless: { foreground: "${git.add}" }
  crypto: { foreground: "${error}" }
  document: { foreground: "${fg_dark}" }
  compressed: { foreground: "${orange}" }
  temp: { foreground: "${operator}" }
  compiled: { foreground: "${operator}" }
  build: { foreground: "${cyan}" }
  source: { foreground: "${magenta}" }

punctuation: { foreground: "${bg_highlight}" }
date: { foreground: "${yellow}" }
inode: { foreground: "${operator}" }
blocks: { foreground: "${operator}" }
header: { foreground: "${fg_dark}" }
octal: { foreground: "${orange}" }
flags: { foreground: "${purple}" }

symlink_path: { foreground: "${operator}" }
control_char: { foreground: "${orange}" }
broken_symlink: { foreground: "${error}" }
broken_path_overlay: { foreground: "${error}" }]],
    colors
  )

  return eza
end

return M
