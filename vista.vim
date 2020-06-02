let g:vista_default_executive = 'coc'

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

nnoremap <leader>s :Vista finder coc<CR>

let g:vista#finders = ['fzf']
let g:vista#renderer#enable_icon = 1

nnoremap <leader>v :Vista<CR>
