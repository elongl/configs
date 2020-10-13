# Set new panes to open in current directory
bind c new-window -c "#{pane_current_path}"
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"


# Copies tmux buffer into clipboard.
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
