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

" NeoBundle
" ------------------------------------------------------------
source ~/.vim/bundle.vim

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
" ------------------------------------------------------------
nnoremap <silent> \g :Unite grep:%:-iHRn<CR>

" QuickRun Color
" ------------------------------------------------------------

let ansi_buffer = quickrun#outputter#buffer#new()
function! ansi_buffer.init(session)
  call call(quickrun#outputter#buffer#new().init,  [a:session],  self)
endfunction

function! ansi_buffer.finish(session)
  AnsiEsc
  call call(quickrun#outputter#buffer#new().finish,  [a:session], self)
endfunction

call quickrun#register_outputter("ansi_buffer", ansi_buffer)

" Gundo
" ------------------------------------------------------------
nmap U :<C-u>GundoToggle<CR>

" NeoComplcache
" ------------------------------------------------------------

"  Automatically Startup
let g:neocomplcache_enable_at_startup = 1

" Tab Complete
function InsertTabWrapper()
  if pumvisible()
    return "\<c-n>"
  endif
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k\|<\|/'
    return "\<tab>"
  elseif exists('&omnifunc') && &omnifunc == ''
    return "\<c-n>"
  else
    return "\<c-x>\<c-o>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" Quickrun
let g:quickrun_config = {
\   "_" : {
\       "outputter/buffer/split" : ":botright 8sp",
\       "runner" : "vimproc",
\       "runner/vimproc/updatetime" : 200,
\   }
\}

" Ruby Rick
" ------------------------------------------------------------
command! Rick :%s/:\(\w\+\) =>/\1:/g
