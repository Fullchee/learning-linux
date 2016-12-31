" My .vimrc
" in progress
" The comments may be a bit excessive because I'm still learning
" to turn an option off, have no, (eg noignorecase, nohls)


" Step 1: Install Pathogen: https://github.com/tpope/vim-pathogen

syntax on

" line numbers
:set number 

" incremental search (is) (updates the search as you type)
" highlight search (hls)
:set ignorecase incsearch hlsearch

" on by default, search the top after reaching the bottom
:set wrapscan

