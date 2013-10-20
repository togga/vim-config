let mapleader="§"

map <leader>f :CommandTFlush<CR>\|:CommandT<CR>
map <leader>w :w<CR>
map <leader>wa :wa<CR>
map <leader>wq :wq<CR>

" control + navigation to jump between windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" control + arrow to jump between windows
noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l

" F4 to search for word-under-cursor in all project files
map <F4> :execute "grep -r " . expand("<cword>") . " ." <bar> cw<cr>
