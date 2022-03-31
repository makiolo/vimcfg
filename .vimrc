" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
"set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set ruler		                "Show the cursor position all the time
set clipboard=unnamed			"copy-paste bewtween applications
set viminfo='20,<1000,s1000		" max lines copy, paste

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","
let g:mapleader=","

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
	silent !mkdir ~/.vim/backups > /dev/null 2>&1
	set undodir=~/.vim/backups
	set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Auto indent pasted text

" nnoremap p p=`]<C-o>
" nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on
" autocmd FileType text setlocal textwidth=78				" For all text files set 'textwidth' to 78 characters.
"

"turn on syntax highlighting (after filetype)
syntax on

" Display tabs and trailing spaces visually

"if has('gui_running')
"	  set list
"	  set listchars=tab:\ \ ,trail:·
"endif

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
set cino=N-sg0	 "Identation config ,no indent namespace

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Tabs =============================
set tabpagemax=1000								" max tabs
set splitbelow									" open new files down

" ================ Custom Settings ==================
" if has('mouse')
" 	set mouse=a
" endif

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif


" =============== Font ===============================
if has('gui_running')
	"Strictly necessary for Powerline
	set encoding=utf-8
	set guifont=Hack:h11
endif

" =============== Vundle Initialization ===============
" windowet
if filereadable($HOME."/vimfiles/vundle_plugins")
	so $HOME/vimfiles/vundle_plugins
endif
" linux
if filereadable($HOME."/.vim/vundle_plugins")
	so $HOME/.vim/vundle_plugins
endif

" ================ Appearance ========================

if has('gui_running')
	au GUIEnter * simalt ~x
	if has("gui_running")
		set lines=999 columns=999
	endif
endif

if has("unix")
	set encoding=utf-8
	# set term=xterm-256color
	# set t_Co=256
	colorscheme molokai
endif

" theme white
if 0
	" set guifont=Consolas:h11
	set guifont=Source\ Code\ Pro:h11
	colorscheme github
	let g:airline_theme="sol"
endif

" theme dark
if 1
	set guifont=Source\ Code\ Pro\ Light:h11
	colorscheme molokai
	let g:airline_theme="molokai"
	set cursorline
endif


" fix paste in terminal
set t_BE=

" increase max lines copy, paste
set viminfo='20,<1000,s1000


if isdirectory("/home/ricardomg/dev/plague-defense/Classes")
	cd /home/ricardomg/dev/plague-defense/Classes
endif

