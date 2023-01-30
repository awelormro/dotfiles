local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<Leader>po"] = { ":Telescope possession list <CR>", "Possession session list"},
    ["<Leader>ww"] = {":Neorg workspace main<CR>","Open Neorg index"},
    ["<Leader>ze"] = {":ZenMode<CR>","Toggle zen mode"},
    ["<Leader>wi"] = {":e ~/Abuwiki/Abunorg/main/journal/index.norg<CR>","Open Neorg journal"},
    ["<Leader>w<Leader>i"] = {":Neorg journal today<CR>","Open Neorg journal"},
  },
  i = {
    ["<C-n>"] = { "<C-o>o", "new line in insert mode" },
    ["<C-b>"] = { "<C-o>O", "new line in insert mode" },
    ["<C-d>"] = { "<C-o>b<C-o>dw", "delete current word in insert mode" },
    ["<C-S-d>"] = { "<C-o>w<C-o>dw", "delete current word in insert mode" },
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
