syntax enable " enable syntax processing
filetype on
filetype plugin indent on
colorscheme solarized

set nocompatible " don't bother being vi compatible
set hidden " hides buffers instead of closing them
set background=dark
set backspace=indent,eol,start
set title
set wildmenu
set wildmode=full
set nostartofline
set nowrap
set linebreak
set autoindent
set smartindent
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tabs are spaces
set shiftwidth=2 " number of spaces for use for autoindent
set shiftround " always indent to a multiple of shiftwidth
set complete-=i " autocomplete in vim (use Ctrl-p) 
set showmatch " show matching braces
set formatoptions=tcroql
set hlsearch " highlights matching search results
set incsearch " search as letters are entered
set ignorecase " ignores case for searching
set smartcase " unless capital letters are being used
set laststatus=2 " always shows the status line
" set relativenumber uses relative line numbers instead of absolute
set ruler " displays ruler in lower right (line, column, percent)
set gdefault " uses /g as default
set textwidth=80
set colorcolumn=81
set cursorline " creates highlight for cursor
set scrolloff=5 " cursor is never more than 5 lines away from edge of screen
set nobackup
set undofile
set noswapfile
set history=500
set undolevels=500
set lazyredraw " only redraw when you need to
set pastetoggle=<F2> " use in insert mode to make pasting not shitty

if has('gui_running')
    set background=light
else 
    set background=dark
endif

