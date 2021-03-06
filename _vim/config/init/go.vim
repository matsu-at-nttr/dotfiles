" go: (vim-go) https://github.com/fatih/vim-go/blob/master/doc/vim-go.txt
let g:go_metalinter_deadline = "5s"
augroup GoSetting
  autocmd!
  autocmd BufNewFile,BufRead *.{go} set filetype=go
  autocmd BufWritePre *.{go} :GoImports
  autocmd BufWritePre *.{go} :GoMetaLinter
  " :GoInfo
  autocmd FileType go nmap <Leader>i <Plug>(go-info)
  " for :GoAlternate :A, :AV, :AS, :AT
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END
