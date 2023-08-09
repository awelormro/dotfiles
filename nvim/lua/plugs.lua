local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- require("lazy").setup(plugins, opts)
-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  {'windwp/nvim-autopairs',
  event = "InsertEnter",
  opts = {} -- this is equalent to setup({}) function
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
 'Mofiqul/dracula.nvim',
  { 'anuvyklack/pretty-fold.nvim',
     config = function()
        require('pretty-fold').setup()
     end
  },
  {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  -- For ultisnips users.
  'SirVer/ultisnips',
  'quangnguyen30192/cmp-nvim-ultisnips',
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  {
      "williamboman/mason.nvim"
  },
  "hrsh7th/nvim-cmp",
  { 'williamboman/mason-lspconfig.nvim'},
  "honza/vim-snippets",
  {
    "mhinz/vim-startify",
    lazy=false,
  },
  -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
  {
      'numToStr/Comment.nvim',
      opts = {
          -- add any options here
      },
      lazy = false,
  },
  'tpope/vim-surround',
  'nvim-tree/nvim-tree.lua',
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'}
})


