git submodule init
git submodule update

New-Item -ErrorAction Ignore -Type Directory `
  -Path $ENV:LOCALAPPDATA/nvim
New-Item -ErrorAction Ignore -Type SymbolicLink `
  -Path $ENV:LOCALAPPDATA/nvim/init.vim `
  -Value $ENV:USERPROFILE\dotfiles\nvim\init.vim
New-Item -ErrorAction Ignore -Type SymbolicLink `
  -Path $ENV:LOCALAPPDATA/nvim/ginit.vim `
  -Value $ENV:USERPROFILE\dotfiles\nvim\ginit.vim
