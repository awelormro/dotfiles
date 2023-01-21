-- Import & assign the map() function from the utils module
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
