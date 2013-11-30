###########################################################
# Functions
pathmunge () {
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    if [ "$2" = "after" ] ; then
      PATH=$PATH:$1
    else
      PATH=$1:$PATH
    fi
  fi
}

###########################################################
# Options for zsh
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_all_dups
unsetopt GLOBAL_RCS
eval $( dircolors -b )
autoload -Uz compinit
setopt appendhistory extendedglob notify
unsetopt beep
setopt nohashdirs
setopt nohashcmds
unsetopt share_history

zstyle :compinstall filename '/home/davek/.zshrc'
# allow approximate
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
# tab completion for PID :D
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
# cd not select parent dir.
zstyle ':completion:*:cd:*' ignore-parents parent pwd
# no cache for autocomplete
zstyle ':completion::complete:*' use-cache 0
# Fix SSH Hostname completion
compdef -d ssh 2>/dev/null
if [ -f ~/.ssh/config ]; then
   hosts=($hosts $(grep '^Host\s' ~/.ssh/config | sed 's/^Host\s//' | egrep -v '^\*$'))
fi
zstyle ':completion:*:hosts' hosts $hosts

compinit

# Set prompt
autoload -U promptinit
promptinit
prompt adam1

pathmunge /usr/local/bin
pathmunge /usr/sbin
pathmunge /sbin
pathmunge ~/.remote
pathmunge ~/bin

###########################################################
# Key Bindings
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '^[[3~' delete-char
bindkey -v '\e[H' vi-beginning-of-line
bindkey -v '\e[F' vi-end-of-line
bindkey -v '\e[7~' vi-beginning-of-line
bindkey -v '\e[8~' vi-end-of-line
[[ "$terminfo[khome]" == "^[O"* ]] && bindkey -M viins "${terminfo[khome]/O/[}" beginning-of-line
[[ "$terminfo[kend]" == "^[O"* ]] && bindkey -M viins "${terminfo[kend]/O/[}" end-of-line
[[ -z "$terminfo[cuu1]"  ]] || bindkey -M viins "$terminfo[cuu1]"  up-line-or-history
[[ -z "$terminfo[kcuu1]" ]] || bindkey -M viins "$terminfo[kcuu1]" up-line-or-history

###########################################################
# X11 clipboard in VIM on RedHat/CentOS
if [ -e /usr/bin/vimx ]; then alias vim='/usr/bin/vimx'; fi

###########################################################
# Aliases
alias ls='ls --color=auto'
alias vi='vim'
alias ide='vim -s ~/.vimrc_ide'
alias unix2dos='dos2unix --u2d'
alias 7zip='7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on'
alias su='su -m'
alias pass='apg -a1 -n1 -m 12'
alias backdoor-borisch='ssh -p 65522 davek@64.199.12.45'
alias lockscreen='xscreensaver-command -lock'
alias rmove='ionice -c 3 rsync -rv --progress --inplace --remove-source-files'
#which schedtool >/dev/null 2>&1
#if [ $? -eq 0 ]; then
#   alias amarok='schedtool -I -e amarok'
#   alias mplayer='schedtool -I -e mplayer'
#fi
CP_VERSION=$(cp --version | head -1 | cut -d ' ' -f 4) && CP_VERSION=$(echo $CP_VERSION|sed 's/\..*//g')
[ $CP_VERSION -ge 8 ] && alias cp='cp --reflink=auto'

###########################################################
# Manpage colors
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

###########################################################
# Execute local shell options
if [ -f ~/.localrc ]
then
  . ~/.localrc
fi


export EDITOR="vim"
export MAIL=$HOME/Mail/inbox
export GIT_AUTHOR_NAME=${USER}@$(hostname)

###########################################################
# zsh breakes on CentoOS 5 with rxvt-unicode-256color
if [ "$TERM" = "rxvt-unicode-256color" ]; then
  grep '^CentOS release 5' /etc/issue >/dev/null 2>&1
  if [ $? -eq 0 ]; then
    export TERM=rxvt-unicode
  fi
  grep '^RecoveryOS release 5' /etc/issue >/dev/null 2>&1
  if [ $? -eq 0 ]; then
    export TERM=rxvt-unicode
  fi
  if [ "$OSTYPE" = "cygwin" ]; then
    export TERM=rxvt-unicode
  fi
fi
