" My .vimrc
" in progress
" The comments may be a bit excessive because I'm still learning
" to turn an option off, have no, (eg noignorecase, nohls)


" Step 1: Install Pathogen https//github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" line numbers
set number 

" incremental search (is) (updates the search as you type)
" highlight search (hls)
set ignorecase incsearch hlsearch

" on by default, search the top after reaching the bottom
set wrapscan


" TABS AND SPACES
set tabstop=4       "pressing tab moves 4 visual spaces
set softtabstop=4   "using 
set expandtab       "tabs are spaces

set wildmenu        "when typing a command, press tab for visual autocomplete
