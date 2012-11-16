" RSpec
" ------------------------------------------------------------
let g:quickrun_config = {}
let g:quickrun_config['ruby.rspec'] = {'command': "rspec"}
augroup RSpec
  autocmd!
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
augroup END 

" Color
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

" with VimProc
" ------------------------------------------------------------
let g:quickrun_config = {
\   "_" : {
\       "outputter/buffer/split" : ":botright 8sp",
\       "runner" : "vimproc",
\       "runner/vimproc/updatetime" : 200,
\   }
\}
