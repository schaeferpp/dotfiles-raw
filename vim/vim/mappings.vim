"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ; :
nnoremap <F4> :set invhlsearch<CR>
inoremap <F4> <ESC>:set invhlsearch<CR>gi

vmap <C-d> :EasyAlign -/ \*\?/<l0>r0<CR>

nnoremap <Leader>mt :make tags<CR>
nnoremap <Leader>ma :make all<CR>
nnoremap <Leader>me :make execute<CR>

nnoremap <C-]> g<C-]>
nnoremap <Leader><C-]> <C-w>g<C-]><C-w>T
nnoremap <Leader>+ :tabm +<cr>
nnoremap <Leader>- :tabm -<cr>
nnoremap <Leader>gf <C-w>gf

" Split 'jumping'
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-l> <C-W>l
map      gB   :bprevious<CR>
map      gb   :bnext<CR>

map     ,a    :GNOMEAlignArguments<CR>

nnoremap <F6> <C-W>>
nnoremap <F7> <C-W><

nnoremap <Esc> :set nohls<cr>

" Save as root
map      <Leader>w :w !sudo tee %<CR>L<CR>

map      <Leader>l :NERDTreeToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <Leader>u :UndotreeToggle<CR>

" Alternate Header with ,h
nmap <leader>h :A<cr>

" Open file in new tab with ,o
nmap <leader>o <C-w>gf
nmap <leader>gf :e <cfile><cr>

nnoremap / :set hls<CR>/
" nnoremap <CR> :set nohls<CR>
nnoremap <silent><expr> <C-c> (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

nnoremap <Leader><C-j> <C-j><C-_>
nnoremap <Leader><C-k> <C-k><C-_>
nnoremap <Leader><C-h> <C-h><C-_>
nnoremap <Leader><C-l> <C-l><C-_>

" Indentation
vnoremap < <gv
vnoremap > >gv

" Movement of blocks
vmap <expr>  <LEFT>   DVB_Drag('left')
vmap <expr>  <RIGHT>  DVB_Drag('right')
vmap <expr>  <DOWN>   DVB_Drag('down')
vmap <expr>  <UP>     DVB_Drag('up')
vmap <expr>  D        DVB_Duplicate()

" easier formatting of paragraphs
vmap Q gq
nmap Q vipgq

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Add word to directory and search for the next unknown word
nmap zg zg]s

