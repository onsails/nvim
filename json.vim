augroup json_hooks
  autocmd!
  autocmd FileType json syntax match Comment +\/\/.\+$+
  autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
augroup end
