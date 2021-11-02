let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits',
        \'i:impls,trait implementations',
    \]
    \}

nmap <f5> :lua require('rust-tools.runnables').runnables()<cr>
nmap <f2> :lua require'rust-tools.hover_actions'.hover_actions()<cr>

" vim:ts=4:sts=4:sw=4
