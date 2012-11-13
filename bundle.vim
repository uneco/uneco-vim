set runtimepath^=~/.vim/neobundle.vim
let s:log = expand('~/.vim/info/neobundle/')
if !isdirectory(s:log)
  call mkdir(s:log, 'p')
endif
let g:neobundle_log_filename = s:log . strftime('%Y-%m-%d.log')
call neobundle#rc(expand('~/.vim/bundle'))

NeoBundle 'https://github.com/Shougo/echodoc.git'
NeoBundle 'https://github.com/Shougo/neobundle.vim.git'
NeoBundle 'https://github.com/Shougo/unite.vim.git'
NeoBundle 'https://github.com/Shougo/vimproc.git'
NeoBundle 'https://github.com/Shougo/vim-vcs.git'
NeoBundle 'https://github.com/Shougo/vimfiler.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
NeoBundle 'https://github.com/Shougo/vinarise.git'
NeoBundle 'https://github.com/Shougo/neocomplcache.git'
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
NeoBundle 'https://github.com/othree/html5.vim.git'
NeoBundle 'https://github.com/hail2u/vim-css3-syntax'
NeoBundle 'https://github.com/hokaccha/vim-html5validator.git'
NeoBundle 'https://github.com/sjl/gundo.vim'
NeoBundle 'https://github.com/tsaleh/vim-matchit.git'
NeoBundle 'https://github.com/osyo-manga/unite-quickfix'
NeoBundle 'https://github.com/osyo-manga/shabadou.vim.git'
NeoBundle 'https://github.com/vim-scripts/nginx.vim.git'
NeoBundle 'https://github.com/lilydjwg/colorizer.git'

NeoBundle 'custom', {'base': '~/.vim/', 'type': 'nosync'}
NeoBundleLocal ~/.vim/labs
