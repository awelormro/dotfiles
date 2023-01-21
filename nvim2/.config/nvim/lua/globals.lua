
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.cursorline=true
vim.opt.termguicolors=true
vim.cmd.colorscheme("industry")
vim.opt.spell=true
vim.opt.expandtab=true
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.spelllang={'es','en'}

-- lista={'hola','pinche','perro'}
-- print(lista[math.random(1,#lista)])

--ran=math.random(1~3)
--print(ran)

--print(lista[ran])
require("nvim-autopairs").setup()
--require('mini.starter').setup()
--require('dashboard').setup()
--require('mini.statusline').setup()
