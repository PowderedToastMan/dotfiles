if which exa >/dev/null 2>&1
  function ls --wraps='exa --group-directories-first' --description 'alias ls exa --group-directories-first'
    exa --group-directories-first $argv;
  end
else
  function ls --wraps='ls --color=auto' --description 'alias ls ls --color=auto'
   command ls --color=auto $argv;
  end
end
