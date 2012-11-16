" Convert Symbolic Hash Syntax 1.8 to 1.9
" ------------------------------------------------------------
if &filetype ==# "ruby"
  command! HashRefactor :%s/:\(\w\+\) =>/\1:/g
endif
