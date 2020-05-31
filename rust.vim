augroup rust_hooks
  autocmd!
  autocmd BufRead Cargo.toml call crates#toggle()
  autocmd FileType rust setlocal ts=2 sts=2 sw=2 expandtab
augroup end
