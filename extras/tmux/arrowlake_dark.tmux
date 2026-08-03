#!/usr/bin/env bash

# Arrowlake colors for Tmux

set -g mode-style "fg=#FB9B00,bg=#312e55"

set -g message-style "fg=#FB9B00,bg=#312e55"
set -g message-command-style "fg=#FB9B00,bg=#312e55"

set -g pane-border-style "fg=#312e55"
set -g pane-active-border-style "fg=#3F3BF5"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${syntax.title},bg=${status.bg}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#070614,bg=${syntax.title},bold] #S #[fg=${syntax.title},bg=${status.bg},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=${status.bg}] #{prefix_highlight} #[fg=#312e55,bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=#312e55] %Y-%m-%d  %I:%M %p #[fg=${syntax.title},bg=#312e55,nobold,nounderscore,noitalics]#[fg=#070614,bg=${syntax.title},bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=${status.bg}] #{prefix_highlight} #[fg=#312e55,bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=#312e55] %Y-%m-%d  %H:%M #[fg=${syntax.title},bg=#312e55,nobold,nounderscore,noitalics]#[fg=#070614,bg=${syntax.title},bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#5c6296,bg=${status.bg}"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#5c6296,bg=${status.bg}"
setw -g window-status-format "#[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${status.bg},bg=#312e55,nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=#312e55,bold] #I  #W #F #[fg=#312e55,bg=${status.bg},nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#FB9B00]#[bg=${status.bg}]#[fg=${status.bg}]#[bg=#FB9B00]"
set -g @prefix_highlight_output_suffix ""
