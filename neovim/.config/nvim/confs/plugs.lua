vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'
    use 'jaredgorski/fogbell.vim'
    use 'tinted-theming/base16-vim'
    -- use ''
    use "jbyuki/venn.nvim"
    use 'vimwiki/vimwiki'
    use 'mg979/vim-visual-multi'
    use 'sotte/presenting.vim'
    use { "williamboman/mason.nvim" }
    use  'junegunn/vim-easy-align'
    use 'RRethy/nvim-base16'
    -- use {'nvim-treesitter/nvim-treesitter'}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
	use 'norcalli/nvim-colorizer.lua'
    use 'luochen1990/rainbow'
	use 'ap/vim-css-color'
    use 'brenoprata10/nvim-highlight-colors'
    use {
      "folke/twilight.nvim",
      config = function()
        require("twilight").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
    use 'inkarkat/vim-visualrepeat'
    use {"folke/trouble.nvim",
    -- requires = "kyazdani42/nvim-web-devicons",
    config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
    end
    }
    use 'preservim/tagbar'
    use 'qianjigui/rainbow_brackets.vim'
    use "EdenEast/nightfox.nvim"
    use 'jbyuki/nabla.nvim'
    use {
      "folke/zen-mode.nvim",
      config = function()
        require("zen-mode").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
          window= {
              options={
                  number=true,
                  relativenumber=true,
              },
          },
        }
      end
    }
    use {
     'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
    -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

      end
    }
    use 'Soares/base16.nvim'
	use {'dracula/vim', as = 'dracula'}
	use 'lewis6991/impatient.nvim'
	use {
	'nvim-tree/nvim-tree.lua',
	requires = {
	'nvim-tree/nvim-web-devicons', -- optional, for file icons
	},
	tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
    use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }
	use {
 	 "max397574/colortils.nvim",
  		cmd = "Colortils",
  		config = function()
    		require("colortils").setup()
  		end,
	}
	use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
	use {'glepnir/dashboard-nvim'}
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'terrortylor/nvim-comment'
	use 'lervag/vimtex'
    use 'jiangmiao/auto-pairs'
	use {
	'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'jedrzejboczar/possession.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
	}
	use 'honza/vim-snippets'
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}
	use 'matze/vim-tex-fold'
    use 'folke/tokyonight.nvim'
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			  require("todo-comments").setup {
	  -- your configuration comes here
	  -- or leave it empty to use the default settings
	  -- refer to the configuration section below
			}
		end
	}
	use { "nvim-telescope/telescope-file-browser.nvim" }
	use  'lukas-reineke/indent-blankline.nvim'
	use 'samu698/autoIndent.nvim'
	-- Lua
	use {
  	"folke/which-key.nvim",
  		config = function()
    		require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    		}
  		end
	}
end,

config = {
  display = {
    open_fn = require('packer.util').float,
  }}})


-- vim.opt.termguicolors = true
