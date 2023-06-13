local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    'tpope/vim-speeddating',
     lazy=false,
  },
  {
    'tpope/vim-surround',
     lazy=false,
  },
  {
    'chrisbra/NrrwRgn',
    lazy=false,
  },
  {'suliveevil/utl.vim',
    lazy=false,
  },
  {'inkarkat/vim-SyntaxRange',
    lazy=false,
  },
  {
    'mattn/calendar-vim',
    lazy=false
  },
  {'junegunn/fzf',
    lazy=false,

  },
  {
    'vim-scripts/Tagbar',
    lazy=false

  },
  {
    'junegunn/fzf.vim',
    lazy=false,
  },
  {
    'lervag/vimtex',
    lazy=false
  },
  {
    'vim-pandoc/vim-pandoc',
    lazy=false
  },
  {
    'vim-pandoc/vim-pandoc-syntax',
    lazy=false
  },
  {
    'vim-pandoc/vim-rmarkdown',
    lazy=false
  },
  {
    'dhruvasagar/vim-table-mode',
    lazy=false
  },
  {'awelormro/zettelvim',
    lazy=false,
    dir="~/Plantillas/zettelvim/"
  },
  {
    "awelormro/bujovim",
    lazy=false,
    dir="~/Plantillas/bujovim"
  },
  {
    'awelormro/vim-abuorgmode',
    dir="~/Plantillas/vim-abuorgmode",
    lazy=false,
  },
  {
    'mhinz/vim-startify',
    branch='center',
    lazy=false
  },
  {'sambazley/vim-csveval',
    lazy=false
  },
  {'azabiong/vim-highlighter',
    lazy=false
  },
  {'LeafCage/flashcards.vim',
    lazy=false
  },
  {'archernar/vim-flashcard',
    lazy=false
  },
  {'EdwinWenink/vim-quiz',
    lazy=false
  },
  {'guyon/quiz-vim',
    lazy=false
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
