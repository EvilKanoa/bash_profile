" basic setup
syntax on
set nocompatible
let mapleader=","

" plugin options
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle, required
Plugin 'gmarik/Vundle.vim'

" git integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" silver-searchers instead of grep
Plugin 'rking/ag.vim'

" nerdtree
Plugin 'scrooloose/nerdtress'

" better tmux nevigation
Plugin 'christoomey/vim-tmux-navigator'

" ctrl+p
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

" general config
set number                      " enable line numbers
set backspace=indent,eol,start  " allo backspace in insert mode
set history=5000                " mooooore history
set showcmd                     " show commands as written
set showmode                    " show the current mode
set encoding=utf-8              " it's 2017 baby
set visualbell                  " disable annoying sounds
set undodir=~/.vim/backup       " persisten undo location
set undofile
set autoindent                  " enable auto indentation
set listchars=tab:··,eol:¬,nbsp:†
set foldmethod=indent           " Fold based on indent
set nofoldenable                " Don't fold by default
set wildmode=list:longest
set wildmenu                    " Enable autocomplete menu
set wildignore=*.o,*.obj,*-     " Don't complete from these files
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg*,*.gif
set mouse=a

" specific language options
let g:tex_flavor='latex'
let g:haddock_browser = "open"

" tab specific option
set tabstop=4                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

" Open NERDTree
map <leader>n :NERDTreeToggle<CR>

" Clear highlighting
nnoremap <leader><space> :noh<CR>

" Closing braces
" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
" inoremap [ []<Esc>i
" inoremap " ""<Esc>i
" inoremap ' ''<Esc>i
" inoremap ` ``<Esc>i

" Rebind escape
inoremap jj <Esc>l

" Trim trailing whitespace
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" Ignore arrow keys, we are hard core
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
