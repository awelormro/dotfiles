--
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'jaredgorski/fogbell.vim'
    use {'nvim-treesitter/nvim-treesitter', run= 'TSUpdate'}
    use { "williamboman/mason.nvim" }
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    }
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    -- use 'glepnir/dashboard-nvim'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'SirVer/ultisnips'
    use 'quangnguyen30192/cmp-nvim-ultisnips'
    use 'hrsh7th/cmp-omni'
    use 'lervag/vimtex'
    use 'honza/vim-snippets'
    use 'lervag/wiki'
    -- use ''
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'vim-pandoc/vim-rmarkdown'
    --use 'glepnir/dashboard-nvim'
    use {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    require("indent_blankline").setup { filetype_exclude = { "dashboard" }
    }
  end
}
    use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
--    config = function ()
--	require'alpha'.setup(require'alpha.themes.dashboard'.config)
--    end
}
    use 'windwp/nvim-autopairs'
    use { "nvim-telescope/telescope-file-browser.nvim"} 
    -- using packer.nvim
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    --use ''
    use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
end,

config = {
  display = {
    open_fn = require('packer.util').float,
    
  }}})

--local db = require('dashboard')

--db.custom-header={"holis"}

