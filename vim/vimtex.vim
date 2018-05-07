let g:tex_conceal=""
let g:vimtex_fold_enabled=1
let g:vimtex_compiler_method='latexrun'

let g:vimtex_compiler_latexrun = {
    \ 'background' : 0,
    \ 'build_dir' : '',
    \ 'options' : [
    \   '--verbose-cmds',
    \   '--latex-args="-synctex=1"',
    \   '--latex-cmd=pdflatex',
    \   '--bibtex-cmd=biber'
    \ ],
    \}

" vim:ts=4:sts=4:sw=4
