" go: (vim-go) https://github.com/fatih/vim-go/blob/master/doc/vim-go.txt
let g:go_metalinter_deadline = "5s"
augroup GoSetting
  autocmd!
  autocmd BufNewFile,BufRead *.{go} set filetype=go
  autocmd BufWritePre *.{go} :GoImports
  autocmd BufWritePre *.{go} :GoMetaLinter
augroup END
