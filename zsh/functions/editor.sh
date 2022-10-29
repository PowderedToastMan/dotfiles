if which nvim >/dev/null 2>&1; then
  alias vi='nvim'
  alias vim='nvim'
  alias vimdiff='nvim -d'
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi
