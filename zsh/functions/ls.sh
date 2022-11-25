if which exa >/dev/null 2>&1; then
  alias ls='exa --group-directories-first --group'
else
  alias ls='ls --color=auto'
fi
