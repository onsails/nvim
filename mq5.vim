function Mql_hook()
    setlocal ft=cpp
    setlocal makeprg=compile_mql
    nnoremap <buffer> <F7> :exe "make" expand('%:p')<CR>
endfunction

augroup Mode_hooks_group
    autocmd!
    " autocmd FileType c call CandCPP_hook()
    " autocmd FileType cpp call CandCPP_hook()
    autocmd BufNewFile,BufRead *.mq5 call Mql_hook()
    autocmd BufNewFile,BufRead *.mqh call Mql_hook()
    autocmd FileType cpp setlocal shiftwidth=2 softtabstop=2 expandtab
augroup End

