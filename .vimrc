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

" NeoBundle
" ------------------------------------------------------------
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'https://github.com/Shougo/echodoc.git'
NeoBundle 'https://github.com/Shougo/neobundle.vim.git'
NeoBundle 'https://github.com/Shougo/unite.vim.git'
NeoBundle 'https://github.com/Shougo/vim-vcs.git'
NeoBundle 'https://github.com/Shougo/vimfiler.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
NeoBundle 'https://github.com/Shougo/vinarise.git'
NeoBundle 'https://github.com/Lokaltog/vim-powerline.git'

filetype indent on
filetype plugin on

" Unite 
" ------------------------------------------------------------
noremap <C-c><C-r> :<C-u>Unite file_mru -buffer-name=file_mru<CR>
noremap <C-c><C-d> :<C-u>UniteWithBufferDir file -buffer-name=file<CR>

" Powerline
" ------------------------------------------------------------
set guifont=Monaco\ for\ Powerline:h12
let g:Powerline_symbols = 'fancy'

" VimFiler
" ------------------------------------------------------------
let g:vimfiler_as_default_explorer=1
let g:vimfiler_safe_mode_by_default=0
