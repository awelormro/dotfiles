local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<Leader>e"] = {":NvimTreeFindFileToggle<CR>", "Toggle nvimtree"},
  },
}

-- more keybinds!

M.nvimtree = {
  n = {
    ["<Leader>e"] = {":NvimTreeFindFileToggle<CR>","Toggle nvimtree"}
  }
}
return M
