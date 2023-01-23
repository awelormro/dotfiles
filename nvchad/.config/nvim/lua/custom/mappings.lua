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

-- more keybinds!

return M
