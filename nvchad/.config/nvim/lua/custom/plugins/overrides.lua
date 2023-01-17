-- vim.opt.runtimepath:prepend "/home/abu/.local/share/nvim/site/pack/packer/start/cmp-omni"
-- vim.opt.runtimepath:append  "/home/abu/.local/share/nvim/site/pack/packer/start/cmp-omni/after"
-- vim.opt.runtimepath:prepend "/home/abu/.local/share/nvim/site/pack/packer/start/nvim-cmp"
-- vim.opt.runtimepath:append  "/home/abu/.local/share/nvim/site/pack/packer/start/nvim-cmp/after"
-- vim.opt.runtimepath:prepend "/home/abu/.local/share/nvim/site/pack/packer/start/vimtex"
-- vim.opt.runtimepath:append  "/home/abu/.local/share/nvim/site/pack/packer/start/vimtex/after"
--
vim.cmd[[filetype plugin indent on]]
local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "c",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}
-- vim.opt.runtimepath:prepend "$HOME/.local/share/nvim/site/pack/packer/start/vimtex"
-- vim.opt.runtimepath:append  "$HOME/.local/share/nvim/site/pack/packer/start/vimtex/after"

-- vim.cmd[[filetype plugin indent on]]

-- local cmp = require("cmp")

M.cmp={

  formatting = {
      format = function(entry, vim_item)
          vim_item.menu = ({
            omni = (vim.inspect(vim_item.menu):gsub('%"', "")),
            buffer = "[Buffer]",
            -- formatting for other sources
            })[entry.source.name]
          return vim_item
        end,
  },
  options ={
    sources ={
      { name = "omni" },
      { name = "luasnip" },
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
    }
  }
}

M.telescope = {
  options = {
    extensions_list={'file_browser','possession'}
  }
}

return M
