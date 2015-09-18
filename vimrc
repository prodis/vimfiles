"----------------------------------------
"
" Prodis' Vim files
"
"----------------------------------------

"----------------------------------------
" Vundle
"----------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'fatih/vim-go'
Plugin 'pbrisbin/vim-mkdir'

" TODO
" supertab
" vim-multiple-cursor
" vim-powerline
" smartpairs

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

" vim-commentary
nmap X gcl " comment a line in normal mode


syntax on " Turn on syntax highlighting
set encoding=utf-8
set showcmd                     " display incomplete commands

set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Show line numbers
set number

" White space
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Folding settings
set foldmethod=indent "fold based on indent
set foldnestmax=3     "deepest fold is 3 levels
set nofoldenable      "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" Vertical/horizontal scroll off settings
"set scrolloff=3
"set sidescrolloff=7
"set sidescroll=1

" Font
set guifont=Monaco:h10
set guioptions-=T "Remove top toolbar
set guioptions-=r "Remove right hand scroll bar
set guioptions-=L "Remove left hand scroll bar

" Open splits at right side (and below)
set splitright
set splitbelow

" General
"set cf "enable error files & error jumping.
"set clipboard+=unnamed "yanks go on clipboard instead.
"set history=256 "number of things to remember in history.
"set autowrite "writes on make/shell commands
set ruler "ruler on
set timeoutlen=250 "time to wait after ESC (default causes an annoying delay)

" Cursor in insert mode
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Some stuff to get the mouse going in term set mouse=a
"set mouse=a
"set ttymouse=xterm2

" Ctrl+L clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>

" Improve 'n' command (for searches)
nmap n nzz
nmap N Nzz

" Map Q to something useful
noremap Q gq

" Make Y consistent with C and D
nnoremap Y y$

" Key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

" Key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remove trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

map <leader>= :call TrimWhiteSpace()<CR>
map! <leader>= :call TrimWhiteSpace()<CR>

autocmd BufWritePre * :%s/\s\+$//e

set list listchars=tab:»»,trail:·

" Colors
if has("gui_running")
  set columns=999
  set lines=999

  colorscheme railscasts

  " Highlight the line and the column of the current position of cursor
  set cursorline
  set cursorcolumn
  hi CursorLine guibg=#333333
  hi CursorColumn guibg=#333333
endif
