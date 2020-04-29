" NERDTree
map <C-n> :NERDTreeToggle %<CR>
" on vim open focus on open file buffer if any
autocmd vimenter * call VimEnter()
function VimEnter()
	if (bufname("%") != "")
		NERDTree %
		wincmd w
	else
		NERDTree
		wincmd w
	endif
endfunction
" autocmd vimenter * if (winnr("$") == 1) | NERDTree % | wincmd w | else | NERDtree | endif
" close nvim if only buffer left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
