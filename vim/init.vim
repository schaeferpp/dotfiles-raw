try
    source ~/.vim/plugins.vim

    try
        source ~/.vim/min.vim
    catch
    endtry

    try
        source ~/.vim/airline-settings.vim
    catch
    endtry

    try
        source ~/.vim/mappings.vim
    catch
    endtry

    try
        source ~/.vim/cscope-mappings.vim
    catch
    endtry

    try
        source ~/.vim/indentation.vim
    catch
    endtry

    try
        source ~/.vim/highlighting.vim
    catch
    endtry

    try
        runtime plugin/dragvisuals.vim
    catch
    endtry

    " own-snippets
    set rtp+=~/.vim/snips
catch
    echoerr "No Pluginfile"
endtry

set list listchars=tab:¦\ ,trail:∙,precedes:<,extends:>,nbsp:~
set foldmethod=indent
set foldlevel=5

" vim:ts=4:sts=4:sw=4
