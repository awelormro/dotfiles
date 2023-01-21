local autocmd = vim.api.nvim_create_autocmd
require("custom.dashconfs")
require("custom.texconfs")
require("custom.globalconfs")
vim.opt.concealcursor="nvic"
require('telescope').load_extension('possession')
require("telescope").load_extension("file_browser")

vim.g.vimtex_view_method = "zathura"
