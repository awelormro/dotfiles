local overrides = require "custom.plugins.overrides"

return {
  -- Override plugin definition options
  ['hrsh7th/cmp-omni']={},
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ['ludovicchabant/vim-gutentags']={},
  ['vim-scripts/Tagbar']={},            -- overrde plugin configs
  ['vim-scripts/taglist.vim']={},
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["hrsh7th/nvim-cmp"]={
    override_options=overrides.cmp,
  },
  ["nvim-telescope/telescope.nvim"] = {
    override_options = overrides.telescope
  },
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  ['glepnir/dashboard-nvim']={},
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  ['mattn/emmet-vim']={},
  ['camspiers/lens.vim']={},
  ['vim-pandoc/vim-pandoc-syntax']={},
  ['vim-pandoc/vim-rmarkdown'    ]={},
  [ 'preservim/vim-markdown']={},
  ['dhruvasagar/vim-table-mode']={},
  ['junegunn/vim-easy-align'   ]={},
  [ 'vim-scripts/loremipsum']={},
  [ 'ap/vim-css-color']={},
  [ 'tpope/vim-repeat'       ]={},
  [ 'tpope/vim-surround'     ]={},
  [ 'preservim/nerdcommenter']={},
  [ 'Yggdroot/indentLine'    ]={},
  [ 'tpope/vim-commentary'   ]={},
  [ 'lervag/vimtex'     ]={},
  [ 'matze/vim-tex-fold']={},
  [ 'lervag/wiki.vim']={},
  [ 'lervag/wiki-ft.vim']={},
  [ 'lervag/lists.vim'  ]={},
  [ 'sotte/presenting.vim']={},
  [ 'mboughaba/i3config.vim']={},
  [ 'vimer/html5.vim'       ]={},
  ['farfanoide/vim-kivy']={},
  --code formatting, linting etc
  ['itchyny/calendar.vim']={},
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["nvim-telescope/telescope-file-browser.nvim"]={},
  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard
  ['jedrzejboczar/possession.nvim']=({
    requires = { 'nvim-lua/plenary.nvim' },
    config=function ()
      require('possession').setup()
    end
  }),
  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
