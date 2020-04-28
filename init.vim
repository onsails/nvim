" brew tap caskroom/fonts
" brew cask install font-firacode-nerd-font 

if exists('g:vscode')
	" VSCode extension
	xmap gc  <Plug>VSCodeCommentary
	nmap gc  <Plug>VSCodeCommentary
	omap gc  <Plug>VSCodeCommentary
	nmap gcc <Plug>VSCodeCommentaryLine
else
	" ordinary neovim
	set mouse=a
	inoremap jk <ESC>
	inoremap jj <Esc>
endif

nnoremap <esc> :noh<return><esc>
inoremap <F2> <ESC>
inoremap <C-d> <Esc>lxi

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" consider https://github.com/junegunn/fzf
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iberianpig/tig-explorer.vim'
Plug 'rhysd/git-messenger.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let mapleader = ","
colo seoul256

set encoding=UTF-8

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

" leaderF
let g:Lf_WindowPosition = 'popup'

" tig
" open tig with current file
nnoremap <Leader>T :TigOpenCurrentFile<CR>

" open tig with Project root path
nnoremap <Leader>t :TigOpenProjectRootDir<CR>

" open tig grep
nnoremap <Leader>g :TigGrep<CR>

" resume from last grep
nnoremap <Leader>r :TigGrepResume<CR>

" open tig grep with the selected word
vnoremap <Leader>g y:TigGrep<Space><C-R>"<CR>

" open tig grep with the word under the cursor
nnoremap <Leader>cg :<C-u>:TigGrep<Space><C-R><C-W><CR>

" open tig blame with current file
nnoremap <Leader>b :TigBlame<CR>

" Airline
let g:airline_theme = 'deus'

" coc
" set path to nvr'd node
if has('macunix')
	let g:coc_node_path = $HOME . '/.nvm/versions/node/v14.0.0/bin/node'
	set guifont=FiraCode\ Nerd\ Font:h11
	let g:neovide_fullscreen=v:true
endif

" debug https://www.reddit.com/r/rust/comments/f1ucwh/hey_rustaceans_got_an_easy_question_ask_here_72020/fh910ah/
" copy-paste https://unix.stackexchange.com/questions/139578/copy-paste-for-vim-is-not-working-when-mouse-set-mouse-a-is-on


