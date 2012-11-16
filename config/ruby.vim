" Convert Symbolic Hash Syntax 1.8 to 1.9
" ------------------------------------------------------------
command! RubyHashRefactor :%s/:\(\w\+\) =>/\1:/g
