local overrides = require "custom.plugins.overrides"

return {
  -- Override plugin definition options
  -- ['nvim-telescope/telescope.nvim']={},
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

 -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },


  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["hrsh7th/nvim-cmp"]={
    override_options=overrides.cmp,
  },
  ['hrsh7th/cmp-omni']={},
  ["nvim-telescope/telescope.nvim"] = {
    override_options = overrides.telescope
  },

  -- ["lukas-reineke/indent-blankline.nvim"] = ({
  --   override_options={
  --     char_highlight_list ={ "IndentBlanklineIndent1",
  --        "IndentBlanklineIndent2",
  --        "IndentBlanklineIndent3",
  --        "IndentBlanklineIndent4",
  --        "IndentBlanklineIndent5",
  --        "IndentBlanklineIndent6",
  --       },
  -- --     filetype_exclude={'dashboard'},
  --     }
  -- })

  -- ["kyazdani42/nvim-tree.lua"] = {
  -- ["kyazdani42/nvim-tree.lua"] = false,
    -- cmd={'NvimTreeFindFile','NvimTreeFindFileToggle'},
    -- override_options = overrides.nvimtreeconfs,
  -- },
  ['nvim-tree/nvim-tree.lua'] = {
    cmd={'NvimTreeFindFile','NvimTreeFindFileToggle'},
    override_options = overrides.nvimtree,
  },
  -- Install a plugin
  ['ludovicchabant/vim-gutentags']={},
  ['vim-scripts/taglist.vim']={},
  ['vim-scripts/Tagbar']={},
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
    --   require('possession').setup()
    require('possession').setup {
        commands = {
            save = 'SSave',
            load = 'SLoad',
            delete = 'SDelete',
            list = 'SList',
        }
    }
        end
  }),
  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
