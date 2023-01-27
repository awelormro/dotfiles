vim.opt.conceallevel = 2
vim.cmd[[hi @text.emphasis gui=italic]]
vim.opt.concealcursor = "n"
-- require('neorg').setup {}
require('neorg').setup {
  load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.norg.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/Abuwiki/Abunorg/abunotes",
            tesis = "~/Abuwiki/Abunorg/tesis",
            maint = "~/Abuwiki/Abunorg/main",
            gcmex = "~/Abuwiki/Abunorg/gcmnorg",
            progr = "~/Abuwiki/Abunorg/programmingstuff",
          },
        },
      },
      ["core.norg.journal"] = {
         config = { -- Note that this table is optional and doesn't need to be provided
          journal_folder = "journal",   -- Configuration here
          workspace = "maint",
         }
      },
      ["core.presenter"] = {
         config = { -- Note that this table is optional and doesn't need to be provided
          zen_mode="zen-mode"   -- Configuration here
         }
      },
    },
  }
