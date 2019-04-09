set history=999            " Increase history (default = 20)
set undolevels=999         

set wildmenu               " Better command line completion
set showcmd                " show partial cmd in the last line of screen
set magic                  " for regular expressions turn magic on

" INDENTATION AND TEXT-WRAP

set smarttab
set expandtab                   " Expand tabs to spaces
set autoindent smartindent      " auto/smart indent
set softtabstop=4               " Tab key results in # spaces
set tabstop=4                   " Tab is # spaces
set shiftwidth=4                " The # of spaces for indenting.

set wrap       " wrap lines
set linebreak

set nu
set ruler
set number        " always show line numbers
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set nofoldenable          " don't fold by default
"set foldmethod=indent    " syntax/manual fold
set foldmethod=syntax    " syntax/manual fold
set foldnestmax=3        " deepest fold is 3 levels

" Ensure correct syntax highlighting and auto-indentation for Fortran free-form
" source code.
let fortran_free_source=1
let fortran_do_enddo=1
"filetype plugin indent on

let fortran_fold=1
let fortran_fold_conditionals=1
"let fortran_fold_multilinecomments=1
"let fortran_more_precise=1
"hi Function term=underline cterm=bold ctermfg=LightGray

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
