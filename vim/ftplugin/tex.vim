source ~/.vim/vimtex.vim

nnoremap <F9>  :exec "!zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . @% . " " . expand('%:r') . ".pdf"<cr><cr>

" vim:ts=4:sts=4:sw=4
