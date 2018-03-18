silent! packadd minpac
if exists('*minpac#init')
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  call minpac#add('PProvost/vim-ps1')
  call minpac#add('christoomey/vim-tmux-navigator')
  call minpac#add('ervandew/supertab')
  call minpac#add('godlygeek/tabular')
  call minpac#add('machakann/vim-highlightedyank')
  call minpac#add('scrooloose/nerdtree')
  call minpac#add('tpope/vim-repeat')
  call minpac#add('tpope/vim-surround')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('w0ng/vim-hybrid')

  if filereadable($XDG_CONFIG_HOME."/nvim/minpacupdate")
    silent call minpac#update()
    call delete($XDG_CONFIG_HOME."/nvim/minpacupdate")
  endif

  let g:hybrid_custom_colors = 1
  colorscheme hybrid

  set ls=2
  set encoding=utf-8
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:airline_theme='jellybeans'

  command! PackUpdate call minpac#update()
  command! PackClean  call minpac#clean()
endif

set inccommand=split
set number
set ruler
set background=dark
set ts=2 sts=2 sw=2 expandtab
set linebreak
set mouse=a
set clipboard+=unnamedplus

nnoremap <leader>w :setlocal wrap!<cr>
nnoremap <leader>p :set paste!<cr>
