" vim: set fdm=marker:

" Mappings {{{3
" Set the comma as the leader key and put ; to invoke command line mode {{{4
let mapleader = " "
let maplocalleader = " "
nnoremap ; :

" Buffer management {{{4

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <Esc> <Esc>:noh<CR>:echo ''<cr>
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
nnoremap <Space><Space>w <Plug>(easymotion-s2)
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
nnoremap <leader>sa :wa!<CR>
nnoremap <Leader>x :bd!<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <leader>f<leader>f :Files <c-r>=expand('%:p:h') . '/'<cr><cr>

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
" Plugin mappings {{{4
nnoremap <Space>e :Fern . -reveal=% -drawer -toggle<cr>
" nnoremap <Leader>e :NERDTreeToggle<CR>
" nnoremap <Leader><leader>l <Plug>(easyoperator-line-select)
" omap <Leader>l  <Plug>(easyoperator-line-select)
" xmap <Leader>l  <Plug>(easyoperator-line-select)

nnoremap <F2> :TagbarToggle<CR>
nnoremap <Leader>fo :History<CR>
nnoremap <Leader>fk :Maps<CR> 
nnoremap <Leader>ra :RainbowToggle<CR>
" }}}
" Pairing mappings {{{1
inoremap " ""<left>
inoremap ' ''<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ( ()<Left>

