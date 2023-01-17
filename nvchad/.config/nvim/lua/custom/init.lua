local autocmd = vim.api.nvim_create_autocmd
require("custom.dashconfs")
require("custom.texconfs")
require("custom.globalconfs")
vim.opt.concealcursor="nvic"
require('telescope').load_extension('possession')
require("telescope").load_extension("file_browser")
-- vim.opt.runtimepath:prepend "PATH/nvim-lua/plenary.nvim"
-- vim.opt.runtimepath:prepend "PATH/hrsh7th/nvim-cmp"
-- vim.opt.runtimepath:prepend "PATH/hrsh7th/cmp-nvim-lsp"
-- vim.opt.runtimepath:prepend "PATH/hrsh7th/cmp-buffer"
-- vim.opt.runtimepath:prepend "PATH/hrsh7th/cmp-omni"
-- vim.opt.runtimepath:prepend "PATH/neovim/nvim-lspconfig"
-- vim.opt.runtimepath:prepend "PATH/williamboman/mason.nvim"
-- vim.opt.runtimepath:prepend "PATH/williamboman/mason-lspconfig.nvim"
-- vim.opt.runtimepath:prepend "PATH/vimtex"
-- vim.opt.runtimepath:append  "PATH/vimtex/after"
--
-- vim.cmd[[filetype plugin indent on]]
--
-- local cmp = require("cmp")
--
-- cmp.setup({
--   sources = cmp.config.sources({
--     { name = "omni" },
--     { name = "nvim_lsp" },
--     { name = "buffer", keyword_length = 3 },
--   }),
-- })

vim.g.vimtex_view_method = "zathura"
-- vim.g.vimtex_syntax_enabled = 0
-- I would also recommend to keep the quickfix stuff enabled!
-- vim.g.vimtex_quickfix_enabled = 0
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
