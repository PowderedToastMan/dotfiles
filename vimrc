call pathogen#infect()

set nocompatible                " Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start  " more powerful backspacing
set background=dark
colorscheme zenburn

set autoindent
set number
set ts=2 sts=2 sw=2 expandtab
set history=1000
set linebreak
syntax on

" airline
set ls=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" backup rules
silent execute '!rm -rf $HOME/.vim/tmp'
silent execute '!mkdir -p $HOME/.vimtmp/backup'
set backupdir=$HOME/.vimtmp/backup
silent execute '!mkdir -p $HOME/.vimtmp/swap'
set directory=$HOME/.vimtmp/swap
silent execute '!mkdir -p $HOME/.vimtmp/views'
set viewdir=$HOME/.vimtmp/views

set guifont=Terminus
set hlsearch
set incsearch
set mouse=a
set nowrap
set ofu=syntaxcomplete#Complete
set ruler
set linespace=0

" filetype
filetype on
filetype plugin on
filetype indent on

map <F2>              : w !sudo tee %<CR>
map <C-N>             : tabnext<CR>
map <C-P>             : tabprev<CR>
map <F9>              : q<CR>
map <F10>             : split<CR>
map <F11>             : vsplit<CR>
map <F12>             : tabnew<CR>
nnoremap <leader>w    : setlocal wrap!<cr>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
let g:BASH_Ctrl_j = 'off'
nnoremap <LEFT> zh
nnoremap <RIGHT> zl
nnoremap <UP> <C-y>
nnoremap <DOWN> <C-e>

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $TERM == "rxv-unicode-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
