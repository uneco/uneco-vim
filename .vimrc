" NeoBundle
" ------------------------------------------------------------
source ~/.vim/neobundle-config.vim

" Configurations
" ------------------------------------------------------------
let config_pathes = '~/.vim/config/*.vim:~/.vim/config/custom/*.vim'
for config_path in split(config_pathes, ':')
  for conf in split(glob(config_path), '\n')
    exe 'source' conf
  endfor
endfor
