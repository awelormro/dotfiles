

 " _     _ _______ __   __ _______ _______  _____  _______
 " |____/  |______   \_/   |  |  | |_____| |_____] |______
 " |    \_ |______    |    |  |  | |     | |       ______|
 "

" Tab management
nnoremap <Tab> :bnext\|set concealcursor="nvic"\|syntax on<CR>
nnoremap <S-Tab> :bprev\|set concealcursor="nvic"<CR>

" New line insertions directly in insert mode
inoremap <C-n> <C-o>o
inoremap <C-b> <C-o>O

" Set the comma as the leader key.
let mapleader = " "
let maplocalleader = " "
nmap <Esc> <Esc>:noh<CR><Esc>

" Type ,x to close buffer
nnoremap <silent><leader>x :bd<CR>
nnoremap ; :

" Type space-e to toggle the file explorer

nnoremap <Space>e :Fern %:h -drawer -toggle<cr>
" nnoremap <Space>e :NERDTreeFind<CR>
" nnoremap  <Space>e :call RangerExplorer()<CR>
" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <Esc> <Esc><Esc>:noh\|call popup_clear(1)<CR><Esc>
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

nnoremap gcc <leader>c<space>

" inoremap <C-v> <C-o>o
" inoremap <A-Space> <C-o>o

" Type ,sa to save all buffers
nnoremap <leader>sa  :wa<CR>

" Type ,sf to force save a buffer
nnoremap <leader>sf  :w!<CR>

nnoremap <leader>sy :syntax enable<CR>

" vim-powered terminal in split window
map <Leader>te :term ++close<cr><C-w>J<C-w>k<C-w>7+<C-w>j
" tmap <Leader>t <c-w>:term ++close<cr>
tmap <Leader>tq <C-\><C-n>:q!<CR>
" vim-powered terminal in new tab
map <Leader>T :ter ++curwin<cr>
tmap <Leader>T <c-w>:bde!  term ++close<cr>


" Press ,q to delete current split
nnoremap <leader>q :q<CR>

" Press ,fo to show recently open files with fzf
nnoremap <leader>fo :History<CR> 

" Press ,ft to show colorschemes with fzf
nnoremap <leader>ft :Colors<CR> 

" Press ,fb to show Buffer list with fzf
nnoremap <leader>fb :Buffers<CR> 

" Press fo to show recently open files with fzf
nnoremap <leader>fm :Files<CR> 

" Press ,fk to show Keymappings with fzf
nnoremap <leader>fk :Maps<CR> 

" Press ,fc to show recently open command history with fzf
nnoremap <leader>fc :Commands<CR> 

" Minimap Keymappings
nnoremap <Leader>mt :MinimapToggle<CR>
nnoremap <Leader>mc :MinimapClose<CR>
nnoremap <Leader>mr :MinimapRefresh<CR> 

" Vim function to toggle virtualedit
nnoremap <Leader>ve :ToggleVirtualedit<CR> 

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

tnoremap <C-q> <C-\><C-n>:q!<CR>
tnoremap <Esc> <C-\><C-n>

" <Leader>p{char} to move to {char}
map  <Leader>p <Plug>(easymotion-bd-f)
nmap <Leader>p <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>wo <Plug>(easymotion-bd-w)
nmap <Leader>wo <Plug>(easymotion-overwin-w)

" noremap <Leader><Tab> :WikiLinkNext<CR>
" noremap <Leader><S-Tab> :WikiLinkPrev<CR>

" inoremap <expr><Cr>  pumvisible() ? "\<C-y>" : "\<Cr>"
" Goyo toggle
nnoremap <Leader>z :Goyo<CR>
