local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<Leader>ww"] = {":Neorg workspace maint<CR>","Open Neorg index"},
    ["<Leader>wi"] = {":Neorg journal today<CR>","Open Neorg journal"},
  },
}
-- Let's override nvimtree's mappings

M.nvimtree = {
   n = {
    ["<leader>e"] = {"<cmd> NvimTreeFindFileToggle <CR>", "Toggle nvimtree"},
    ["<leader>ff"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    ["<C-n>"] = { "<cmd> Telescope file_browser <CR>", "open telescope" },
   },
}

-- more keybinds!

return M
