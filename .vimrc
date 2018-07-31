"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
set omnifunc=syntaxcomplete#Complete
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax
syntax on

" line numbers
set number

" set tabspace
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Turn on the WiLd menu
set wildmenu

" Turn on the ruler
set ruler

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" I don't like wrapping
set nowrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and leader-<Space> to ? (backwards search)
map <space> /
map <leader><space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nnoremap <tab><tab> <C-w><C-w>

" more natural splits
set splitbelow
set splitright

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings and Conveniences
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fix common typos
command! W w
command! Q q
command! Wq wq
command! WQ wq

" hotkeys for running python files
autocmd FileType python nnoremap m :!python3 %<CR>
autocmd FileType bash nnoremap m :!bash %<CR>

" fix shitty jumping
nmap e <C-o>
nmap E <C-i>

" use 'jj' to escape from insert mode
inoremap jj <Esc>
inoremap <Esc> <nop>

" vim users need better change
nnoremap cc c$
