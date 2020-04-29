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
Plug 'flrnprz/plastic.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" consider https://github.com/junegunn/fzf
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iberianpig/tig-explorer.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let mapleader = ","

" color scheme
syntax on
set termguicolors
set background=dark
syntax on
colorscheme plastic
let g:airline = { 'colorscheme': 'plastic' }

set number

source ~/.config/nvim/terminal.vim

source ~/.config/nvim/nerdtree.vim

source ~/.config/nvim/coc.vim

source ~/.config/nvim/tagbar.vim

source ~/.config/nvim/airline.vim

source ~/.config/nvim/fzf.vim

" debug https://www.reddit.com/r/rust/comments/f1ucwh/hey_rustaceans_got_an_easy_question_ask_here_72020/fh910ah/
" copy-paste https://unix.stackexchange.com/questions/139578/copy-paste-for-vim-is-not-working-when-mouse-set-mouse-a-is-on

