-- vim: set fdm=marker:
--  __  __                 
-- |  \/  | __ _ _ __  ___ 
-- | |\/| |/ _` | '_ \/ __|
-- | |  | | (_| | |_) \__ \
-- |_|  |_|\__,_| .__/|___/
--              |_|        
vim.cmd[[
" set spelllang=en,es,pt
" set hidden
"  Buffer management {{{1
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap ; :
nnoremap <Leader>sa :wa!<CR>

" Type space-x to close buffer
nnoremap <silent><leader>x :bd<CR>

" 󰚀  Zen mode settings {{{1 
nnoremap <Leader>z :Goyo<CR>
nnoremap <Space>e :NvimTreeFindFileToggle<cr>
nnoremap <Space>fo :Telescope oldfiles<cr>
nnoremap <Space>co :Telescope colorscheme<cr>
nnoremap <Leader>fk :Telescope keymaps<CR>
" You can split the window in Vim by typing :split or :vsplit.

" 󱣱 Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l. {{{1
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" 󰲏 Resize split windows using arrow keys by pressing: {{{1
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

"  leader mapping settings {{{1
let mapleader = " "
let maplocalleader = " "
let g:vimtex_view_method = 'zathura'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
]]

