vim.cmd[[
set hidden
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap ; :
nnoremap <Leader>sa :wa!<CR>

" Type space-x to close buffer
nnoremap <silent><leader>x :bd<CR>

" Type space-e to toggle the file explorer

nnoremap <Space>e :NvimTreeFindFileToggle<cr>

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
let mapleader = " "
let maplocalleader = " "
]]
