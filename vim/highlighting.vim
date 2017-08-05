set t_Co=256
set termguicolors
" color wombat256mod
" color badwolf
color desertink
" color gotham256

"color seti
"


"let g:gruvbox_bold              = 1
"let g:gruvbox_italic            = 1
"let g:gruvbox_improved_comments = 1
"let g:gruvbox_contrast_dark = 'hard'

"color gruvbox
" set background=dark

set cursorline

function! OverrideHighlights()
    hi CursorLine term=underline ctermfg=NONE ctermbg=235 guibg='#2C3234'
    "hi ColorColumn term=underline ctermfg=NONE ctermbg=235 guibg='#2C3234'
    hi Search cterm=bold,underline ctermbg=black ctermfg=yellow

    hi clear SpellBad
    hi SpellBad cterm=underline,bold ctermfg=red guibg='#DF0858'

    hi SpecialKey ctermfg=249 guifg='#5F5F5F' guibg=bg
    hi NonText ctermfg=249 guifg='#5F5F5F' guibg=bg

    hi Folded guifg=#C4C4C4 gui=NONE
endfunction

function! NeatFoldText()
    " let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
    " let line = ' ' . substitute(getline(v:foldstart), '^\s*\(\/\/\)\?#\?\(\/\*\)?\s*' . '{\d*\s*', '', 'g') . ' '
    let line = ' ' . substitute(getline(v:foldstart), '^[ \t]*\(//\)\?#\?[ \t]*' . '{\d*\s*', '', 'g') . ' '
    let lines_count = v:foldend - v:foldstart + 1
    let lines_count_text = '┤ ' . printf("%10s", lines_count . ' lines') . ' ├'
    let foldchar = matchstr(&fillchars, 'fold:\zs.')
    let foldtextstart = strpart('├' . repeat(' ', v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
    let foldtextend = lines_count_text . repeat(foldchar, 8)
    let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
    return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction


set fillchars=fold:─
set foldtext=NeatFoldText()

call OverrideHighlights()
