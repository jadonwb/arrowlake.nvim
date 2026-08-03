#!/usr/bin/env bash

# Arrowlake colors for Tmux

set -g mode-style "fg=#56AEA9,bg=#ad9b88"

set -g message-style "fg=#56AEA9,bg=#ad9b88"
set -g message-command-style "fg=#56AEA9,bg=#ad9b88"

set -g pane-border-style "fg=#ad9b88"
set -g pane-active-border-style "fg=#6660AF"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${syntax.title},bg=${status.bg}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#DED0BF,bg=${syntax.title},bold] #S #[fg=${syntax.title},bg=${status.bg},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=${status.bg}] #{prefix_highlight} #[fg=#ad9b88,bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=#ad9b88] %Y-%m-%d  %I:%M %p #[fg=${syntax.title},bg=#ad9b88,nobold,nounderscore,noitalics]#[fg=#DED0BF,bg=${syntax.title},bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=${status.bg}] #{prefix_highlight} #[fg=#ad9b88,bg=${status.bg},nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=#ad9b88] %Y-%m-%d  %H:%M #[fg=${syntax.title},bg=#ad9b88,nobold,nounderscore,noitalics]#[fg=#DED0BF,bg=${syntax.title},bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#87786c,bg=${status.bg}"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#87786c,bg=${status.bg}"
setw -g window-status-format "#[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${status.bg},bg=${status.bg},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${status.bg},bg=#ad9b88,nobold,nounderscore,noitalics]#[fg=${syntax.title},bg=#ad9b88,bold] #I  #W #F #[fg=#ad9b88,bg=${status.bg},nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#56AEA9]#[bg=${status.bg}]#[fg=${status.bg}]#[bg=#56AEA9]"
set -g @prefix_highlight_output_suffix ""
