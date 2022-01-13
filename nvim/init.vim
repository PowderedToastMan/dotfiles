
set shiftwidth=2
set smartindent
set relativenumber

if empty('g:plug_home')
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
else
  call plug#begin()

  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-surround'
  Plug 'machakann/vim-highlightedyank'
  Plug 'lambdalisue/suda.vim'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  call plug#end()

  let g:suda_smart_edit = 1

  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'gruvbox'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
  let g:airline#extensions#tabline#tabnr_formatter = 'tabnr'

  colorscheme gruvbox
  let g:gruvbox_contrast_dark = 'hard'
  let g:gruvbox_termcolors = 256
  set background=dark
  let &t_8f = "\e[38;2;%lu;%lu;%lum"
  let &t_8b = "\e[48;2;%lu;%lu;%lum"
  set t_Co=256
  set termguicolors
  set cursorline

  set clipboard+=unnamedplus
endif
