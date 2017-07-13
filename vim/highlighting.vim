set t_Co=256
set termguicolors
" color wombat256mod
" color badwolf
"color desertink

"color seti
"


let g:gruvbox_bold              = 1
let g:gruvbox_italic            = 1
let g:gruvbox_improved_comments = 1
let g:gruvbox_contrast_dark = 'hard'

color gruvbox
set background=dark

set cursorline
hi CursorLine term=underline ctermfg=NONE ctermbg=235 guibg='#2C3234'
hi ColorColumn term=underline ctermfg=NONE ctermbg=235 guibg='#2C3234'
hi Search cterm=bold,underline ctermbg=black ctermfg=yellow

hi Normal guifg='#E4E4E4'

hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=red

hi SpecialKey ctermfg=249 guifg='#5F5F5F'
hi NonText ctermfg=249 guifg='#5F5F5F'

