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


  -- 󰌌 Mapping list
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  --  Lua Settings
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  -- Auto pair brackets
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
  -- 󰚀 zen mode settings
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
  'junegunn/goyo.vim',
  'junegunn/limelight.vim',

  --  Eyecandy, indenting line, and colorscheme settings
  'lukas-reineke/indent-blankline.nvim',
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "dracula/vim", name = "dracula", priority=1000 },
  { 'anuvyklack/pretty-fold.nvim',
     config = function()
        require('pretty-fold').setup()
     end
  },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },


  --  Latex settings
  'jbyuki/nabla.nvim',
  'lervag/vimtex',


  -- 󱌝 Configs for look and feel
  'camspiers/animate.vim',
  'camspiers/lens.vim',

  -- 󰌌 Completion, snippets and keyboard plugs
  'SirVer/ultisnips',
  'quangnguyen30192/cmp-nvim-ultisnips',
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-omni',
  {'chrisgrieser/cmp-nerdfont'},
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'hrsh7th/cmp-cmdline',
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {
      "williamboman/mason.nvim"
  },

  "hrsh7th/nvim-cmp",
  { 'williamboman/mason-lspconfig.nvim'},
  "honza/vim-snippets",

  --  orgmode fork settings
  'mattn/calendar-vim',
  'tpope/vim-speeddating',
  'chrisbra/NrrwRgn',
  'suliveevil/utl.vim',
  'inkarkat/vim-SyntaxRange',
  {
    'awelormro/vim-abuorgmode',
    dir = "~/Plantillas/vim-abuorgmode",
    lazy=false
  },
  {
    'awelormro/zettelvim',
    dir = '~/Plantillas/zettelvim',
    lazy=false
  },

  --  Tags settings
  'vim-scripts/Tagbar',

  -- 󰈞 Fuzzy finder settings
  'junegunn/fzf',
  'junegunn/fzf.vim',
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

  --  File manager settings
  'nvim-tree/nvim-tree.lua',
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'}
})

vim.cmd[[
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  " Limelight
  Twilight
  let g:lens#disabled=1
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  " Limelight!
  Twilight
  let g:lens#disabled=0
endfunction

set clipboard=unnamedplus
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
]]

