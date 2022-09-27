git submodule init
git submodule update

New-Item -ErrorAction Ignore -Type Directory `
  -Path $ENV:LOCALAPPDATA/nvim
New-Item -ErrorAction Ignore -Type SymbolicLink `
  -Path $ENV:LOCALAPPDATA/nvim/init.lua `
  -Value $ENV:USERPROFILE\dotfiles\nvim\init.lua
New-Item -ErrorAction Ignore -Type SymbolicLink `
  -Path $ENV:LOCALAPPDATA/nvim/ginit.vim `
  -Value $ENV:USERPROFILE\dotfiles\nvim\ginit.vim
New-Item -ErrorAction Ignore -Type SymbolicLink `
  -Path $ENV:LOCALAPPDATA/nvim/lua `
  -Value $ENV:USERPROFILE\dotfiles\nvim\lua
