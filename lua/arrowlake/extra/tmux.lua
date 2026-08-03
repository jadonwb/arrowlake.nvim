local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tmux = util.template(
    [[
#!/usr/bin/env bash

# Arrowlake colors for Tmux

set -g mode-style "fg=${focus},bg=${fg_gutter}"

set -g message-style "fg=${focus},bg=${fg_gutter}"
set -g message-command-style "fg=${focus},bg=${fg_gutter}"

set -g pane-border-style "fg=${fg_gutter}"
set -g pane-active-border-style "fg=${border.color}"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${syntax.title},bg=${status.bg}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style ${none}
set -g status-right-style ${none}

set -g status-left "#[fg=${terminal.black},bg=${syntax.title},bold] #S #[fg=${syntax.title},bg=${status.bg},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=${status.bg}] #{prefix_highlight} #[fg=${fg_gutter},bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=${fg_gutter}] %Y-%m-%d  %I:%M %p #[fg=${syntax.title},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${terminal.black},bg=${syntax.title},bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=${status.bg}] #{prefix_highlight} #[fg=${fg_gutter},bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=${fg_gutter}] %Y-%m-%d  %H:%M #[fg=${syntax.title},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${terminal.black},bg=${syntax.title},bold] #h "
}

setw -g window-status-activity-style "underscore,fg=${foregrounds.sidebar},bg=${status.bg}"
setw -g window-status-separator ""
setw -g window-status-style "${none},fg=${foregrounds.sidebar},bg=${status.bg}"
setw -g window-status-format "#[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${status.bg},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=${fg_gutter},bold] #I  #W #F #[fg=${fg_gutter},bg=${status.bg},nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=${focus}]#[bg=${status.bg}]#[fg=${status.bg}]#[bg=${focus}]"
set -g @prefix_highlight_output_suffix ""
]],
    colors
  )
  return tmux
end

return M
