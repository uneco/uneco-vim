" NeoBundle
" ------------------------------------------------------------
source ~/.vim/config/neobundle/neobundle.vim

" Configurations
" ------------------------------------------------------------
let config_paths = '~/.vim/config/*.vim:~/.vim/config/custom/*.vim'
for config_path in split(config_paths, ':')
  for conf in split(glob(config_path), '\n')
    exe 'source' conf
  endfor
endfor
