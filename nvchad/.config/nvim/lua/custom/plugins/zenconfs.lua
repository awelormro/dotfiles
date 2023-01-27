
require("zen-mode").setup({
  window = {
    backdrop = 1,
    width = 0.7,
    height = 0.7,
    options = {
      signcolumn = "no",
      number = false,
      relativenumber = false,
    },
  },
  plugins = {
    twilight = { enabled = true },
  },
})
