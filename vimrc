"----------------------------------------
" Prodis' Vim files
"----------------------------------------

" Show line numbers
set number

" Turn on syntax highlighting
syntax on

" Indent
set shiftwidth=2
set softtabstop=2
set tabstop=2
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
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" Size
set lines=999 columns=999
 
" Font
set guifont=Monaco:h10

" Ignore case in searches
set ignorecase

" Open splits at right side (and below)
set splitright
set splitbelow

" Highlight all search results
set incsearch
set hlsearch

" General
set cf "enable error files & error jumping.
set clipboard+=unnamed "yanks go on clipboard instead.
set history=256 "number of things to remember in history.
set autowrite "writes on make/shell commands
set ruler "ruler on
set wrap "line wrapping on
set timeoutlen=250 "time to wait after ESC (default causes an annoying delay)

" Cursor in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Some stuff to get the mouse going in term set mouse=a
set mouse=a
set ttymouse=xterm2

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

" Key mapping for textmate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

