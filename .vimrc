" NeoBundle
" ------------------------------------------------------------
source ~/.vim/bundle.vim

" Configurations
" ------------------------------------------------------------
let config_path = '~/.vim/config/*.vim'
for conf in split(glob(config_path), '\n')
  exe 'source' conf
endfor
