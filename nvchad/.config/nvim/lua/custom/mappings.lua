local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}
-- Let's override nvimtree's mappings

M.nvimtree = {
   n = {
    ["<leader>e"] = {":NvimTreeFindFileToggle <CR>", "Toggle nvimtree"},
    ["<leader>ff"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    ["<C-n>"] = { "<cmd> Telescope file_browser <CR>", "open telescope" },
   },
}

M.vimwiki = {
  n = {
    ["<Leader><Tab>"] = {":VimwikiNextLink <CR>", "Next Vimwiki Link"},
    ["<Leader><S-Tab>"] = {":VimwikiPrevLink <CR>", "Previous Vimwiki Link"},
    ["<Leader><CR>"] = {":VimwikiFollowLink <CR>", "Enter Vimwiki Link"},
    ["<Leader><Backspace>"] = {":VimwikiGoBackLink <CR>", "Go back Vimwiki Link"},
  }
}

M.fastfold = {
  n = {
    ["zuz"] = {"<Plug>(FastFoldUpdate)", "update folds"},
  }
}
-- M.wiki = {
--   n = {
--     ["<Leader><Tab>"] = {":WikiLinkNext <CR>", "next wiki link"},
--   },
-- }
--
-- M.lists = {
--   n = {
--     ["<Leader>lt"] = {":ListsToggle <CR>", "Toggle lists"},
--   }
-- }
-- M.nvimtree = {
--   n = {
--     -- ["<Leader>e"] = {":NvimTreeFindFileToggle<CR>", "Toggle nvimtree"},
--   },
-- }
-- more keybinds!

return M
