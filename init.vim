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
Plug 'tpope/vim-sensible'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/git-messenger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'kassio/neoterm'
Plug 'hashivim/vim-terraform'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-crates'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-devicons.vim'
Plug 'lambdalisue/fern-mapping-project-top.vim'
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'Yggdroot/indentLine'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-sleuth'

" colorschemes
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'srcery-colors/srcery-vim'
" Plug 'nanotech/jellybeans.vim'
" Plug 'ayu-theme/ayu-vi'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let mapleader = ","

" color scheme
syntax enable
if has('nvim') || has('termguicolors')
  set termguicolors
endif
let g:onedark_terminal_italics = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
let g:airline_theme = 'oceanicnext'

" reduce default delay of hover highlight
set updatetime=50

set number

filetype plugin on

:noremap <leader>gf :e <cfile><cr>

source ~/.config/nvim/semantic-highlight.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/shifting.vim
source ~/.config/nvim/gui.vim
source ~/.config/nvim/terminal.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/ts.vim
source ~/.config/nvim/prettier.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/nerdcommenter.vim

source ~/.config/nvim/polyglot.vim
source ~/.config/nvim/json.vim
source ~/.config/nvim/yaml.vim
source ~/.config/nvim/terraform.vim
source ~/.config/nvim/rust.vim
source ~/.config/nvim/markdown.vim

source ~/.config/nvim/mq5.vim
source ~/.config/nvim/fern.vim
source ~/.config/nvim/vista.vim
source ~/.config/nvim/which-key.vim

" debug https://www.reddit.com/r/rust/comments/f1ucwh/hey_rustaceans_got_an_easy_question_ask_here_72020/fh910ah/
" copy-paste https://unix.stackexchange.com/questions/139578/copy-paste-for-vim-is-not-working-when-mouse-set-mouse-a-is-on
