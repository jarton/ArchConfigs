set nocompatible              " be iMproved, required filetype off                  " required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html

"themes:
Plugin 'sickill/vim-monokai'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/base16-vim'
Plugin 'w0ng/vim-hybrid'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

"plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jistr/vim-nerdtree-tabs'

"javascript
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/syntastic-local-eslint.vim'
au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set shiftwidth=2
au BufNewFile,BufRead *.js,*.html,*.css set softtabstop=2
let g:jsx_ext_required = 0

"python
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
let python_highlight_all=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on         " syntax highlighting

" LEADER KEY
let mapleader="\<space>"

let g:airline#extensions#tabline#enabled = 1  "show bufferline in airline
let g:airline_powerline_fonts = 1             "symbols and font for airline

" the separator used on the left side
let g:airline_left_sep=''
" " the separator used on the right side 
let g:airline_right_sep=''

let g:airline_theme='tomorrow'

let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1

" syntastic check on file open
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['eslint']

" conpletion settings for youcompleteme
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

set t_Co=256	  "for colorsheme to work in tmux
set background=dark
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
set list lcs=trail:·,precedes:«,extends:»,eol:¬,tab:▸\ 
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set hidden 			"buffer swtiching wihtout writing 
set laststatus=2
set encoding=utf-8

colorscheme hybrid

" keybindings
noremap <Leader>l :bn<cr> 
noremap <Leader>h :bp<cr>
noremap <Leader>d :bd<cr>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>n :NERDTreeTabsToggle<CR>

