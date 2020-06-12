augroup rust_hooks
  autocmd!
  autocmd BufRead Cargo.toml call crates#toggle()
  " autocmd FileType rust setlocal ts=4 sts=4 sw=4 expandtab
augroup end
