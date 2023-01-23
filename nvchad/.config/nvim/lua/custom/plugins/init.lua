local overrides = require "custom.plugins.overrides"

return {

  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

  -- Override plugin definition options
  ["nvim-telescope/telescope.nvim"] = {
    override_options = overrides.telescope
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs

  ["lukas-reineke/indent-blankline.nvim"] = ({
    override_options={
      char_highlight_list ={
         "IndentBlanklineIndent1",
         "IndentBlanklineIndent2",
         "IndentBlanklineIndent3",
         "IndentBlanklineIndent4",
         "IndentBlanklineIndent5",
         "IndentBlanklineIndent6",
        },
      filetype_exclude = {
        "help",
        "terminal",
        "alpha",
        "packer",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "mason",
        "dashboard",
        "",
      },
    }
  }),
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    cmd={"NvimTreeFindFile","NvimTreeFindFileToggle","NvimTreeFocus"},
    override_options = overrides.nvimtree,
  },

  ["hrsh7th/nvim-cmp"]={
    override_options=overrides.cmp,
  },
  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ['hrsh7th/cmp-omni']={},
  ['Konfekt/FastFold']={},
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
  [ 'tpope/vim-commentary'   ]={},
  [ 'lervag/vimtex'     ]={},
  -- ['vimwiki/vimwiki'] = {},
  -- [ 'matze/vim-tex-fold']={},
  -- [ 'lervag/wiki.vim']={},
  -- [ 'lervag/wiki-ft.vim']={},
  [ 'lervag/lists.vim'  ]={},
  [ 'sotte/presenting.vim']={},
  [ 'mboughaba/i3config.vim']={},
  [ 'vimer/html5.vim'       ]={},
  ['farfanoide/vim-kivy']={},
  --code formatting, linting etc
  ['itchyny/calendar.vim']={},
  ['f3fora/cmp-spell'] = {},
  ["nvim-telescope/telescope-file-browser.nvim"]={},
  ['glepnir/dashboard-nvim']={},
  ["folke/twilight.nvim"]={
		config = function()
			require("twilight").setup({
				context = 100,
			})
		end,
	},
  ["folke/zen-mode.nvim"]={
		config = function()
			require("zen-mode").setup({
				window = {
					backdrop = 1,
					width = 0.7,
					height = 0.7,
					options = {
						signcolumn = "no",
						number = false,
						relativenumber = false,
					},
				},
				plugins = {
					twilight = { enabled = false },
				},
			})
		end,
	},
  ["nvim-neorg/neorg"]=({
    -- tag = "*",
    ft = "norg",
    after = "nvim-treesitter", -- You may want to specify Telescope here as well
    config = function()
			vim.opt.conceallevel = 2
      vim.cmd[[hi @text.emphasis gui=italic]]
			vim.opt.concealcursor = "n"
      require('neorg').setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.norg.completion"] = {
            config = {
              engine = "nvim-cmp"
            }
          },
          ["core.presenter"] = {
            config = {
              zen_mode = "zen-mode"
            }
          },
          ["core.norg.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/Abuwiki/Abunorg/main",
                tesis = "~/Abuwiki/Abunorg/tesis",
                teach = "~/Abuwiki/Abunorg/gcmnorg",
                progr = "~/Abuwiki/Abunorg/programmingstuff",
                },
              },
          },
      },
    }
    end
  }),
  ['jedrzejboczar/possession.nvim']=({
    requires = { 'nvim-lua/plenary.nvim' },
    config=function ()
      require "custom.plugins.possessionconfs"
        end
  }),
  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
