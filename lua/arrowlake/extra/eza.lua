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
  pipe: { foreground: "${terminal.black}" }
  block_device: { foreground: "${yellow}" }
  char_device: { foreground: "${yellow}" }
  socket: { foreground: "${terminal.black}" }
  special: { foreground: "${purple}" }
  executable: { foreground: "${green}" }
  mount_point: { foreground: "${syntax.operator}" }

perms:
  user_read: { foreground: "${diagnostics.warning}" }
  user_write: { foreground: "${diagnostics.error}" }
  user_execute_file: { foreground: "${diagnostics.success}" }
  user_execute_other: { foreground: "${diagnostics.success}" }
  group_read: { foreground: "${diagnostics.warning}" }
  group_write: { foreground: "${diagnostics.error}" }
  group_execute: { foreground: "${diagnostics.success}" }
  other_read: { foreground: "${diagnostics.warning}" }
  other_write: { foreground: "${diagnostics.error}" }
  other_execute: { foreground: "${diagnostics.success}" }
  special_user_file: { foreground: "${diagnostics.hint}" }
  special_other: { foreground: "${diagnostics.hint}" }
  attribute: { foreground: "${diagnostics.info}" }

size:
  major: { foreground: "${secondary}" }
  minor: { foreground: "${purple}" }
  number_byte: { foreground: "${fg_dark}" }
  number_kilo: { foreground: "${syntax.operator}" }
  number_mega: { foreground: "${secondary}" }
  number_giga: { foreground: "${orange}" }
  number_huge: { foreground: "${ui.attention}" }
  unit_byte: { foreground: "${fg_dark}" }
  unit_kilo: { foreground: "${syntax.operator}" }
  unit_mega: { foreground: "${secondary}" }
  unit_giga: { foreground: "${orange}" }
  unit_huge: { foreground: "${ui.attention}" }

users:
  user_you: { foreground: "${selection}" }
  user_root: { foreground: "${magenta}" }
  user_other: { foreground: "${secondary}" }
  group_yours: { foreground: "${syntax.operator}" }
  group_root: { foreground: "${magenta}" }
  group_other: { foreground: "${fg}" }

links:
  normal: { foreground: "${syntax.operator}" }
  multi_link_file: { foreground: "${secondary}" }

git:
  new: { foreground: "${green}" }
  modified: { foreground: "${magenta}" }
  deleted: { foreground: "${diagnostics.error}" }
  renamed: { foreground: "${secondary}" }
  typechange: { foreground: "${secondary}" }
  ignored: { foreground: "${foregrounds.comment}" }
  conflicted: { foreground: "${orange}" }

git_repo:
  branch_main: { foreground: "${foregrounds.comment}" }
  branch_other: { foreground: "${syntax.operator}" }
  git_clean: { foreground: "${backgrounds.highlight}" }
  git_dirty: { foreground: "${magenta}" }

security_context:
  colon: { foreground: "${foregrounds.comment}" }
  user: { foreground: "${syntax.operator}" }
  role: { foreground: "${syntax.type}" }
  typ: { foreground: "${backgrounds.search}" }
  range: { foreground: "${purple}" }

file_type:
  image: { foreground: "${syntax.operator}" }
  video: { foreground: "${syntax.operator}" }
  music: { foreground: "${diagnostics.success}" }
  lossless: { foreground: "${git.add}" }
  crypto: { foreground: "${diagnostics.error}" }
  document: { foreground: "${fg_dark}" }
  compressed: { foreground: "${orange}" }
  temp: { foreground: "${syntax.operator}" }
  compiled: { foreground: "${syntax.operator}" }
  build: { foreground: "${cyan}" }
  source: { foreground: "${magenta}" }

punctuation: { foreground: "${backgrounds.highlight}" }
date: { foreground: "${yellow}" }
inode: { foreground: "${syntax.operator}" }
blocks: { foreground: "${syntax.operator}" }
header: { foreground: "${fg_dark}" }
octal: { foreground: "${orange}" }
flags: { foreground: "${purple}" }

symlink_path: { foreground: "${syntax.operator}" }
control_char: { foreground: "${orange}" }
broken_symlink: { foreground: "${diagnostics.error}" }
broken_path_overlay: { foreground: "${diagnostics.error}" }]],
    colors
  )

  return eza
end

return M
