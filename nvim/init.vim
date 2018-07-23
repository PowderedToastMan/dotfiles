let g:spacevimrc = $HOME . '/.SpaceVim/vimrc'
if filereadable(expand(g:spacevimrc)) && empty($SUDO_USER)
  exe 'source' g:spacevimrc
  unlet g:spacevimrc
else
  set shiftwidth=2
  set smartindent
  set relativenumber

  set statusline=
  set statusline+=%2*[%n]%*
  set statusline+=%#LineNr#
  set statusline+=\ %f
  set statusline+=\ %2*%m%r%*
  set statusline+=%#LineNr#
  set statusline+=%=
  set statusline+=%y
  set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
  set statusline+=\[%{&fileformat}\]
  set statusline+=\ %5((%l:%c)%)
  set statusline+=\ %p%%
endif
