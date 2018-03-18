git submodule init
git submodule update

New-Item -ErrorAction Ignore -Type Directory -Force `
  -Path $ENV:LOCALAPPDATA\nvim\pack\minpac\opt\minpac
New-Item -ErrorAction Ignore -Type SymbolicLink `
  -Path  $ENV:LOCALAPPDATA\nvim\init.vim `
  -Value $ENV:USERPROFILE\dotfiles\nvim\init.vim
New-Item -ErrorAction Ignore -type File `
  -Path $ENV:LOCALAPPDATA\nvim\minpacupdate
"Guifont DejaVu Sans Mono for Powerline:h9" | `
  Out-File -Encoding ascii $ENV:LOCALAPPDATA\nvim\ginit.vim

Set-ItemProperty -Path  'HKCU:\Environment' `
                 -Name  'XDG_CONFIG_HOME' `
                 -Value '%LOCALAPPDATA%'

git clone https://github.com/k-takata/minpac.git `
  $ENV:LOCALAPPDATA/nvim/pack/minpac/opt/minpac

New-Item -ErrorAction Ignore `
  -Path  "HKLM:\SOFTWARE\Classes\*\Shell\nvim" `
  -Value "Open with NeoVIM"
New-ItemProperty -ErrorAction Ignore -PropertyType String `
  -LiteralPath "HKLM:\SOFTWARE\Classes\*\Shell\nvim" `
  -Name        "Icon" `
  -Value       "C:\tools\neovim\Neovim\bin\nvim-qt.exe"
New-Item -ErrorAction Ignore `
  -Path  "HKLM:\SOFTWARE\Classes\*\Shell\nvim\command" `
  -Value "C:\tools\neovim\Neovim\bin\nvim-qt.exe `"%1`""
