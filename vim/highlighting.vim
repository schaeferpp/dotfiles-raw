set background=dark
set t_Co=256
if has('nvim')
    set termguicolors
endif
" color wombat256mod
" color badwolf
" color desertink
" color gotham256
" color jellybeans

" color OceanicNext
" color molokai
" let g:material_theme_style = 'dark'
" color material
" color primary
" color sitruuna
let ayucolor="dark"
color ayu

"color seti
"
set background=dark


"let g:gruvbox_bold              = 1
"let g:gruvbox_italic            = 1
"let g:gruvbox_improved_comments = 1
"let g:gruvbox_contrast_dark = 'hard'

"color gruvbox
" set background=dark

" if exists('veonim')
set guifont=Symbols\ Nerd\ Font,Fira\ Code
" endif

set cursorline

function! OverrideHighlights()
    " hi CursorLine term=underline ctermfg=NONE ctermbg=235 guibg='#2C3234'
    " hi CursorLine term=underline ctermfg=NONE ctermbg=235 guibg='#1A1A1A'
    " hi ColorColumn term=underline ctermfg=NONE ctermbg=235 guibg='#1A1A1A'
    hi Search cterm=bold,underline ctermbg=black ctermfg=yellow

    " hi clear SpellBad
    " hi SpellBad cterm=underline,bold ctermfg=red guibg='#DF0858'

    hi SpecialKey ctermfg=249 guifg='#5F5F5F' guibg=bg
    hi NonText ctermfg=249 guifg='#5F5F5F' guibg=bg

    " hi Folded cterm=bold guifg=#AAAAAA guibg=#444444 gui=NONE
    hi Folded cterm=bold guifg=#AAAAAA guibg=NONE gui=NONE

    hi Conceal guibg=NONE guifg=NONE ctermfg=NONE
    hi Normal guifg=NONE ctermbg=NONE guibg=NONE
    " hi InactiveWin guibg=#121212
    " hi ActiveWin guibg=NONE

    hi DiffChange guibg=#000000
    hi DiffText guifg=#101010 guibg=#70b950 cterm=bold gui=bold

    hi CocHighlightText guibg=#404040 ctermbg=black

    hi Command cterm=italic gui=italic

    set winhighlight=Normal:ActiveWin,NormalNC:InactiveWin
endfunction

function! NeatFoldText()
    let lineCommentStart = '\(\/\/\)\?'
    let blockCommentStart = '\(\/\*\)\?'
    let blockCommentEnd = '\(\*\/\)\?'
    let line = substitute(getline(v:foldstart), '^\s*' . lineCommentStart . blockCommentStart . '\s*', '', 'g') " Drop leading whitespace and comment characters
    let line = substitute(line, blockCommentStart . '{{{.*$', '', 'g')
    let line = substitute(line, '^\s*', '', 'g') " Trim start
    let line = substitute(line, '\s*$', '', 'g') " Trim end
    let lines_count = v:foldend - v:foldstart + 1
    let lines_count_text = '(' . printf("%10s", lines_count . ' lines') . ')'
    let foldchar = matchstr(&fillchars, 'fold:\zs.')
    let foldtextstart = strpart(' ▼  ' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
    let foldtextend = lines_count_text . repeat(foldchar, 8)
    let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
    return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction


" set fillchars=fold:─
set fillchars=fold:⋅
set foldtext=NeatFoldText()

call OverrideHighlights()

autocmd FileType markdown syntax match todoCheckbox "\[\ \]" conceal cchar=
autocmd FileType markdown syntax match todoCheckbox "\[x\]" conceal cchar=
