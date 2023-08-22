-- Import & assign the map() function from the utils module
vim.cmd[[

" Ctrl-e in normal and insert mode will open the emoji picker.
" Unfortunately doesn't bring you back to insert mode 😕
map <C-e> :Emoj<CR>
imap <C-e> <C-o><C-e>
nnoremap j gj
nnoremap k gk
" Open main orgmode 
nnoremap <Leader>ww :edit ~/Abuwiki/Orgtests/main.org<CR>
" nnoremap <Leader>w<Leader>w <CR>

nnoremap <Leader>fo :Telescope oldfiles<CR>
" Uncomment uncomfortable maps for orgmode
autocmd filetype org  unmap <buffer> <Tab>
autocmd filetype org  unmap <buffer> <S-Tab>
autocmd filetype org  unmap <buffer> <Leader>sa
autocmd filetype org  unmap <buffer> <CR>
autocmd filetype org  nnoremap <buffer> <Leader><CR> :OrgHyperlinkFollow<CR>
autocmd filetype org  nnoremap <buffer> <Leader><Leader><CR> :OrgHyperlinkInsert<CR>
autocmd filetype org  nnoremap <buffer> <Leader>wp :OrgHyperlinkPreviousLink<CR>
autocmd filetype org  nnoremap <buffer> <Leader>wn :OrgHyperlinkNextLink<CR>
autocmd filetype org  nnoremap <buffer> <Leader><Leader>c :OrgCheckBoxUpdate<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
syntax on
syntax enable
]]
vim.g.mapleader=" "
vim.g.maplocalleader=" "

local map = require("utils").map
map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
map("n", "<Leader>fo", ":Telescope oldfiles<CR>")
map('i','C-n','<C-o>o')
map('i','C-b','<C-o>O')
map("n", "<Leader>x", "bdelete")
map("n", "<Leader>e", ":NvimTreeFindFileToggle<CR>")
map("n","<Tab>",":BufferLineCycleNext<CR>")
map("n","<S-Tab>",":BufferLineCyclePrev<CR>")
map("n","<C-h>","<C-w>h")
map("n","<C-j>","<C-w>j")
map("n","<C-k>","<C-w>k")
map("n","<C-l>","<C-w>l")
