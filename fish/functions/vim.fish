if which nvim >/dev/null 2>&1
  function vim --wraps=nvim --description 'alias vim nvim'
    nvim $argv;
  end
  function vi --wraps=nvim --description 'alias vi nvim'
    nvim $argv;
  end
  function vimdiff --wraps='nvim -d' --description 'alias vimdiff nvim -d'
    nvim -d $argv;
  end
end
