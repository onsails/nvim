augroup typescript_hooks
  autocmd!
  autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
  autocmd! FileType typescript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd! FileType typescript.tsx setlocal ts=2 sts=2 sw=2 expandtab
augroup end
