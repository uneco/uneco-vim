" Basic
" ------------------------------------------------------------
set backspace=2
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set number
set expandtab
set hlsearch
set laststatus=2
set ambiwidth=double
syntax on

filetype indent on
filetype plugin on

" Insert Mode Map
" ------------------------------------------------------------
imap <C-a> <Home>
imap <C-e> <End>
imap <C-h> <Left>
imap <C-l> <Right>
imap <C-j> <Down>
imap <C-k> <UP>

" Backspace
" ------------------------------------------------------------
noremap  
noremap!  
noremap <BS> 
noremap! <BS> 

" Use ClipBoard
" ------------------------------------------------------------
vmap <silent> "*Y :!pbcopy; pbpaste<CR>
map <silent> "*p <esc>o<esc>v:!pbpaste<CR>

" Swap File
" ------------------------------------------------------------
set backupskip=/tmp/*,/private/tmp/*
