# zsh breakes on CentoOS 5 with rxvt-unicode-256color
if [ "$TERM" = "rxvt-unicode-256color" ]; then
  if grep -q '^CentOS release 5' /etc/issue; then
    export TERM=rxvt-unicode
  fi
  if grep -q '^RecoveryOS release 5' /etc/issue; then
    export TERM=rxvt-unicode
  fi
  if [[ "$OSTYPE" == "cygwin" ]]; then
    export TERM=rxvt-unicode
  fi
fi

if grep -q '^CentOS release 5' /etc/issue ||
   grep -q '^RecoveryOS release 5' /etc/issue
then
  ZSH_TMUX_TERM=screen
fi
