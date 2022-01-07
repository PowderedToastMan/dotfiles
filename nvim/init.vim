set title

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
