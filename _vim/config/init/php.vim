" lint
function! s:PHPLint()
  let s:result = system('php -l ' . bufname(""))
  let s:count = split(s:result, "\n")
  echo s:result
endfunction

augroup PhpSetting
  autocmd!
  autocmd BufNewFile,BufRead *.{php} set filetype=php
  autocmd FileType php setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufWritePost *.php call <SID>PHPLint()
augroup END

