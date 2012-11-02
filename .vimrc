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

function! CloudAppUpload()
  let l:url = vimproc#system('cloudapp-upload-open ' . expand('%'))
endfunction
command! CloudAppUpload :call CloudAppUpload()

" Use ClipBoard
" ------------------------------------------------------------
vmap <silent> "*Y :!pbcopy; pbpaste<CR>
map <silent> "*p <esc>o<esc>v:!pbpaste<CR>

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
NeoBundle 'https://github.com/Shougo/vimproc.git'
NeoBundle 'https://github.com/Shougo/vim-vcs.git'
NeoBundle 'https://github.com/Shougo/vimfiler.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
NeoBundle 'https://github.com/Shougo/vinarise.git'
NeoBundle 'https://github.com/Lokaltog/vim-powerline.git'
NeoBundle 'https://github.com/thinca/vim-quickrun.git'
NeoBundle 'https://github.com/vim-scripts/sudo.vim.git'
NeoBundle 'https://github.com/vim-scripts/AnsiEsc.vim.git'
NeoBundle 'https://github.com/Sixeight/unite-grep.git'
NeoBundle 'https://github.com/vim-ruby/vim-ruby.git'
NeoBundle 'https://github.com/tpope/vim-rails.git'
NeoBundle 'https://github.com/kchmck/vim-coffee-script.git'
NeoBundle 'https://github.com/mattn/gist-vim.git'
NeoBundle 'https://github.com/bbommarito/vim-slim.git'
NeoBundle 'https://github.com/mikewest/vim-markdown.git'
NeoBundle 'https://github.com/tpope/vim-surround.git'
NeoBundle 'https://github.com/vim-scripts/css_color.vim'

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

" UniteGrep
"
nnoremap <silent> \g :Unite grep:%:-iHRn<CR>

" Rick
command! Rick :%s/:\(\w\+\) =>/\1:/g


" QuickRun Color

let ansi_buffer = quickrun#outputter#buffer#new()
function! ansi_buffer.init(session)
  call call(quickrun#outputter#buffer#new().init,  [a:session],  self)
endfunction

function! ansi_buffer.finish(session)
  AnsiEsc
  call call(quickrun#outputter#buffer#new().finish,  [a:session], self)
endfunction

call quickrun#register_outputter("ansi_buffer", ansi_buffer)
