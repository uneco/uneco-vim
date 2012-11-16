set runtimepath^=~/.vim/neobundle.vim
let s:log = expand('~/.vim/info/neobundle/')
if !isdirectory(s:log)
  call mkdir(s:log, 'p')
endif
let g:neobundle_log_filename = s:log . strftime('%Y-%m-%d.log')
call neobundle#rc(expand('~/.vim/bundle'))
source ~/.vim/bundle.vim

NeoBundle 'custom', {'base': '~/.vim/', 'type': 'nosync'}
NeoBundleLocal ~/.vim/labs
