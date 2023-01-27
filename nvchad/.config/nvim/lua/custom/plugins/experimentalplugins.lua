
    -- tag = "*",
    ft = "norg",
    after = "nvim-treesitter", --You may want to specify Telescope here as well
    config = function()
			vim.opt.conceallevel = 2
      vim.cmd[[hi @text.emphasis gui=italic]]
			vim.opt.concealcursor = "n"
      require('neorg').setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.export"] = {
            config = {} -- Note that this table is optional and doesn't need to be provided
            },
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
