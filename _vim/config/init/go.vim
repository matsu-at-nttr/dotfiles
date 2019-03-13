" go: (vim-go) https://github.com/fatih/vim-go/blob/master/doc/vim-go.txt
let g:go_metalinter_deadline = "5s"
augroup GoSetting
  autocmd!
  autocmd BufNewFile,BufRead *.{go} set filetype=go
  autocmd BufWritePre *.{go} :GoImports
  autocmd BufWritePre *.{go} :GoMetaLinter
augroup END

" go-lsp
        " \ 'name': 'typescript-language-server',
        " \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        " \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
        " \ 'whitelist': ['typescript'],
        " '-mode', 'stdio']},
if executable('go-langserver')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'go-langserver',
        \ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
        \ 'whitelist': ['go'],
        \ })
endif

" debug
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')

nmap <silent> <Leader>d :LspDefinition<CR>
nmap <silent> <Leader>p :LspHover<CR>
nmap <silent> <Leader>r :LspReferences<CR>
nmap <silent> <Leader>i :LspImplementation<CR>
nmap <silent> <Leader>s :split \| :LspDefinition <CR>
nmap <silent> <Leader>v :vsplit \| :LspDefinition <CR>
