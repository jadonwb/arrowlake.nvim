local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local gitui = util.template(
    [[
(
  selected_tab: Some("${magenta}"),
  command_fg: Some("${comment}"),
  selection_bg: Some("${bg_highlight}"),
  selection_fg: Some("${cyan}"),
  cmdbar_bg: Some("${bg}"),
  cmdbar_extra_lines_bg: Some("${bg}"),
  disabled_fg: Some("${comment}"),
  diff_line_add: Some("${git.add}"),
  diff_line_delete: Some("${git.delete}"),
  diff_file_added: Some("${git.add}"),
  diff_file_removed: Some("${git.delete}"),
  diff_file_moved: Some("${git.change}"),
  diff_file_modified: Some("${git.change}"),
  commit_hash: Some("${magenta}"),
  commit_time: Some("${cyan}"),
  commit_author: Some("${green}"),
  danger_fg: Some("${red}"),
  push_gauge_bg: Some("${bg}"),
  push_gauge_fg: Some("${fg}"),
  tag_fg: Some("${attention}"),
  branch_fg: Some("${yellow}")
)
]],
    colors
  )

  return gitui
end

return M
