set autoindent
set expandtab
set guifont=Terminus
set hlsearch
set incsearch
set mouse=a
set nobackup
set nowrap
set nowritebackup
set number
set ofu=syntaxcomplete#Complete
set ruler
set shiftwidth=3
set tabstop=3

syntax on
filetype plugin indent on

map <F2> :w !sudo tee %<CR>
map <C-N> :tabnext<CR>
map <C-P> :tabprev<CR>
map <F9>  :q<CR>
map <F10> :split<CR>
map <F11> :vsplit<CR>
map <F12> :tabnew<CR>
let g:BASH_Ctrl_j = 'off'
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

if has('gui_running')
   "colorscheme desert
   colorscheme obsidian
else
   colorscheme slate
endif
