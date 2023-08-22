local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end


vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({

  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  {'windwp/nvim-autopairs',
  event = "InsertEnter",
  opts = {} -- this is equalent to setup({}) function
  },

  -- {
  --   "folke/zen-mode.nvim",
  --   opts = {
  --     -- your configuration comes here
  --     -- or leave it empty to use the default settings
  --     -- refer to the configuration section below
  --   }
  -- },

  {
    "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  {
	"Pocco81/true-zen.nvim",
	config = function()
		 require("true-zen").setup {
			-- your config goes here
    integrations = {
      twilight = true, -- enable twilight (ataraxis)
      lualine = true -- hide nvim-lualine (ataraxis)
    },
		 }
	end,
  },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
 'Mofiqul/dracula.nvim',
  { 'anuvyklack/pretty-fold.nvim',
     config = function()
        require('pretty-fold').setup()
     end
  },

  -- True Zen mode 
  'junegunn/goyo.vim',
  'junegunn/limelight.vim',

  -- Configs for look and feel
  {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  'SirVer/ultisnips',
  'camspiers/animate.vim',
  'camspiers/lens.vim',
  'quangnguyen30192/cmp-nvim-ultisnips',
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'awelormro/vim-abuorgmode',
  'mattn/calendar-vim',
  'tpope/vim-speeddating',
  'chrisbra/NrrwRgn',
  'suliveevil/utl.vim',
  'inkarkat/vim-SyntaxRange',
  'vim-scripts/Tagbar',
  'lervag/vimtex',
  'junegunn/fzf', 
  'junegunn/fzf.vim',
  'chrisgrieser/cmp-nerdfont',
  'hrsh7th/cmp-omni',
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  'hrsh7th/cmp-cmdline',
  {
      "williamboman/mason.nvim"
  },

  "hrsh7th/nvim-cmp",
  { 'williamboman/mason-lspconfig.nvim'},
  "honza/vim-snippets",
  -- {
  --   "mhinz/vim-startify",
  --   lazy=false,
  -- },
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
      'numToStr/Comment.nvim',
      opts = {
          -- add any options here
      },
      lazy = false,
  },

  {
      'jedrzejboczar/possession.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {'chrisgrieser/cmp-nerdfont'},
  'tpope/vim-surround',
  {
    'awelormro/vim-abuorgmode',
    dir = "~/Plantillas/vim-abuorgmode"
  },
  {
    'awelormro/zettelvim',
    dir = '~/Plantillas/zettelvim',
    lazy=false
  },
  'nvim-tree/nvim-tree.lua',
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'}
})

vim.cmd[[
"  autocmd! User GoyoEnter Limelight
"  autocmd! User GoyoLeave Limelight!

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  let g:lens#disabled=1
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  let g:lens#disabled=0
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
]]
