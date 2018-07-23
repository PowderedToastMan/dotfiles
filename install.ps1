git submodule init
git submodule update

if (Test-Path $ENV:USERPROFILE\.SpaceVim) {
  Set-Location $ENV:USERPROFILE\.SpaceVim
  git pull
} else {
  Set-Location $ENV:USERPROFILE
  git clone --depth=1 https://github.com/SpaceVim/SpaceVim.git `
    .SpaceVim
}

New-Item -ErrorAction Ignore -Type SymbolicLink `
  -Path  $ENV:USERPROFILE\_vimrc `
  -Value $ENV:USERPROFILE\dotfiles\nvim\init.vim

New-Item -ErrorAction Ignore -Type Directory `
  -Path $ENV:USERPROFILE/.SpaceVim.d/autoload
New-Item -ErrorAction Ignore -Type SymbolicLink `
  -Path  $ENV:USERPROFILE\.SpaceVim.d\init.toml `
  -Value $ENV:USERPROFILE\dotfiles\SpaceVim\init.toml
New-Item -ErrorAction Ignore -Type SymbolicLink `
  -Path  $ENV:USERPROFILE\.SpaceVim.d\autoload\myspacevim.vim `
  -Value $ENV:USERPROFILE\dotfiles\SpaceVim\autoload\myspacevim.vim
