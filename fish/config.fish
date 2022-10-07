if status is-interactive
  # Commands to run in interactive sessions can go here

  # agnoster theme
  set -g theme_display_user no
  set -g theme_hide_hostname yes
  #set -g default_user your_normal_user
  set -g theme_svn_prompt_enabled yes
  set -g color_dir_bg green

  theme_gruvbox dark hard

  set fish_cursor_default block blink
  set fish_cursor_insert line blink
  set fish_cursor_replace_one underscore blink
  set fish_cursor_visual block blink

  set -g fish_key_bindings fish_vi_key_bindings

  which neofetch >/dev/null 2>&1 && neofetch

  function reverse_history_search
      history | fzf --no-sort | read -l command
      if test $command
          commandline -rb $command
      end
  end

  function fish_user_key_bindings
      bind -M default / reverse_history_search
  end
end
