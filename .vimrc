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

"General plugins
Plugin 'Shougo/deoplete.nvim'

Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jistr/vim-nerdtree-tabs'

"writing
Plugin 'junegunn/goyo.vim'
Plugin 'reedes/vim-pencil'
Plugin 'junegunn/limelight.vim'

"javascript
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Raimondi/delimitMate'
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

"Golang
Plugin 'fatih/vim-go'
Plugin 'zchee/deoplete-go'

"R 
Plugin 'jalvesaq/Nvim-R'
Plugin 'roxma/nvim-completion-manager'
Plugin 'gaalcaras/ncm-R'

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_auto_sameids = 1

let g:go_auto_type_info = 1

let g:go_list_type = "quickfix"

"airline
let g:airline#extensions#tabline#enabled = 1  "show bufferline in airline
let g:airline#extensions#tabline#show_tabs = 0 "only buffers shown
let g:airline_powerline_fonts = 0             "symbols and font for airline
let g:airline_left_sep='' "the separator used on the left side
let g:airline_right_sep=''  "the separator used on the right side 
let g:airline_theme='tomorrow'

"ale
" Ale error and warning signs.
let g:ale_sign_error = '»'
let g:ale_sign_warning = '›'
" Ale integration with airline.
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'

"completion for nvim
if has('nvim')
    " Enable deoplete on startup
    let g:deoplete#enable_at_startup = 1
    "use tab completion
    inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
    "no preview windoww
    set completeopt-=preview
endif

call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

syntax on         " syntax highlighting

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

" LEADER KEY
let mapleader="\<space>"

" keybindings
" buffer management
noremap <Leader>l :bn<cr> 
noremap <Leader>h :bp<cr>
noremap <Leader>d :bd<cr>
nnoremap <Leader>w :w<CR>
"nerdtree
nnoremap <Leader>n :NERDTreeTabsToggle<CR>

"golang
nnoremap <leader>r :GoRun<CR>
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>


" writing mode
map <F11> :Goyo <bar> :Goyo x100% <bar> :Limelight!! <bar> :TogglePencil <CR>

" spellcheck language
inoremap <silent> <F5> <c -O>:call SpellToggle()<cr>
map <silent> <F5> :call SpellToggle()<cr>
function SpellToggle()
    if &spell == 1
            set nospell
        else
            set spell
            set spelllang=en_us ",nb,en_us,nn
    endif
endfunctio

