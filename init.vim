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
" delete character
inoremap <C-d> <Esc>lxi

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" consider https://github.com/junegunn/fzf
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/git-messenger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
Plug 'rust-lang/rust.vim'
Plug 'kassio/neoterm'
Plug 'hashivim/vim-terraform'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-crates'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-devicons.vim'
Plug 'lambdalisue/fern-mapping-project-top.vim'
Plug 'liuchengxu/vista.vim'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let mapleader = ","

" color scheme
syntax on
set termguicolors
set background=dark
syntax on
colorscheme base16-oceanicnext
let g:airline = { 'colorscheme': 'base16-oceanicnext' }

" reduce default delay of hover highlight
set updatetime=50

set number

" https://vi.stackexchange.com/questions/4141/how-to-indent-as-spaces-instead-of-tab
" https://stackoverflow.com/questions/17916154/vim-tab-spacing-after-enter-new-line
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4
set expandtab
set autoindent
set smartindent

filetype plugin on

:noremap <leader>gf :e <cfile><cr>

source ~/.config/nvim/gui.vim
source ~/.config/nvim/terminal.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/json.vim
source ~/.config/nvim/yaml.vim
source ~/.config/nvim/terraform.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/rust.vim
source ~/.config/nvim/fern.vim
source ~/.config/nvim/vista.vim

" debug https://www.reddit.com/r/rust/comments/f1ucwh/hey_rustaceans_got_an_easy_question_ask_here_72020/fh910ah/
" copy-paste https://unix.stackexchange.com/questions/139578/copy-paste-for-vim-is-not-working-when-mouse-set-mouse-a-is-on

