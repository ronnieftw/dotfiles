set nocompatible 

syntax enable
filetype on
filetype plugin indent on

set termguicolors        " use 24-bit RGB colors, bypasses 16-color ANSI mapping
set background=dark
colorscheme solarized

set hidden               " hide buffers instead of closing them when switching
set backspace=indent,eol,start " allow backspace over autoindent, line breaks, and insert start
set title                " set terminal window title to current file
set wildmenu             " show completion matches in a menu above the command line
set wildmode=list:longest,full " first tab completes to longest match + lists, second tab cycles
set nostartofline        " keep cursor column when jumping (G, gg, Ctrl-D, etc.)
set nowrap               " don't wrap long lines
set linebreak            " if wrap is on, break at word boundaries not mid-word
set autoindent           " copy indent from current line when starting a new line
set tabstop=2            " number of spaces a <Tab> character counts for
set softtabstop=2        " number of spaces a <Tab> keypress inserts (in insert mode)
set expandtab            " insert spaces instead of tab characters
set shiftwidth=2         " spaces used for >> << and autoindent
set shiftround           " always indent to a multiple of shiftwidth
set complete-=i          " don't scan included files for Ctrl-p completion (slow)
set showmatch            " briefly jump to matching bracket when you type one
set formatoptions=tcroql " t=wrap text, c=wrap comments, r=continue comment on Enter, o=on o/O, q=allow gq, l=don't break existing long lines
set hlsearch             " highlight all search matches
set incsearch            " jump to matches as you type the search pattern
set ignorecase           " case-insensitive search
set smartcase            " override ignorecase if pattern contains uppercase
set laststatus=2         " always show the status line (0=never, 1=only splits, 2=always)
set ruler                " show line/column/percent in the status line
set textwidth=80         " auto-wrap text at 80 characters
set scrolloff=5          " keep at least 5 lines visible above/below the cursor
set clipboard=unnamed    " yank/paste uses the system clipboard
set nobackup             " don't create backup files
set noswapfile           " don't create swap files
set undofile             " persist undo history across sessions
set undodir=~/.vim/undodir " where to store undo files (keeps them out of project dirs)
set history=500          " remember 500 commands and searches
set undolevels=500       " maximum number of undos
set lazyredraw           " don't redraw during macros, faster execution
set pastetoggle=<F2>     " toggle paste mode to prevent auto-indent mangling pasted text
