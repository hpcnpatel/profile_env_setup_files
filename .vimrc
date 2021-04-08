set spelllang=en_us        " spell checking
set encoding=utf-8 nobomb  " BOM often causes trouble, UTF-8 is awsum.


set history=999            " Increase history (default = 20)
set undolevels=999         
set autoread               " reload files if changed externally


set wildmenu               " Better command line completion
set showcmd                " show partial cmd in the last line of screen
set magic                  " for regular expressions turn magic on
set hidden                 " can put buffer to the background without
                           " writing to disk, will remember history/marks.
set lazyredraw             " don't update the display while executing macros
set ttyfast                " Send more characters at a given time.


" INDENTATION AND TEXT-WRAP

set smarttab
set expandtab                   " Expand tabs to spaces
set autoindent smartindent      " auto/smart indent
set copyindent                  " copy previous indentation on auto indent
set softtabstop=4               " Tab key results in # spaces
set tabstop=4                   " Tab is # spaces
set shiftwidth=4                " The # of spaces for indenting.
set smarttab                    " At start of line, <Tab> inserts shift width
                                "   spaces, <Bs> deletes shift width spaces.
" set lbr                       " line breal on 200 char
" set tw=200

set bs=2

set wrap       " wrap lines
set textwidth=80
set linebreak

set nu
set ruler
set number        " always show line numbers
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type


"set foldmethod=indent    " syntax/manual fold
set foldmethod=syntax    " syntax/manual fold
set foldnestmax=3        " deepest fold is 3 levels
"set nofoldenable          " don't fold by default

" Ensure correct syntax highlighting and auto-indentation for Fortran free-form
" source code.
let fortran_free_source=1
let fortran_do_enddo=1
filetype plugin indent on

let fortran_fold=1
let fortran_fold_conditionals=1
let fortran_fold_multilinecomments=1
let fortran_more_precise=1
let hs_highlight_delimiters = 1
let hs_highlight_boolean = 1
let hs_highlight_types = 1
let hs_highlight_more_types = 1
let hs_highlight_debug = 1
hi Function term=underline cterm=bold ctermfg=LightGray

au BufWinLeave * mkview
au BufWinEnter * silent loadview

"set pastetoggle=<F2>  "temporarily switch to paste mode

"colorscheme github
"colorscheme desert
"colorscheme jellybeans
"colorscheme PaperColor
"set background=dark " Light theme is used by default
"set background=light " Light theme is used by default
"set t_Co=256        " Turn on if using PaperColor 

" Taglist script is added and it is a source code browser for Vim which provides
" strucutres of source code files and allows one to efficiently brows through
" code for diff prog languages. 
" TO use it, type in VIM :Tlist or :helptags
syntax on

if &diff
syntax off
endif
