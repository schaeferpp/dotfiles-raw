Plug 'tpope/vim-surround'                " ysiw'   -> surrounds word with '
let g:surround_{char2nr('c')} = "\\\1command\1{\r}"

Plug 'tpope/vim-repeat'                  " make surroundings repeatable
Plug 'scrooloose/nerdcommenter'
Plug 'jlanzarotta/bufexplorer'           " - 'be' (normal open)
Plug 'vim-scripts/let-modeline.vim'      " extend modeline to `let`
"Plug 'kopischke/vim-stay'
"set viewoptions=cursor,folds,slash,unix
Plug 'ctrlpvim/ctrlp.vim'

" vim:ts=4:sts=4:sw=4
