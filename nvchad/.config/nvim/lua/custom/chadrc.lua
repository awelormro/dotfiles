local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme_toggle = { "onedark", "one_light" },
  theme = "nightfox",
  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = false,
}

M.plugins = require "custom.plugins"

-- table structure
M.mappings = require "custom.mappings"

-- vim.cmd[[hi @text.emphasis gui=italic]]

require('custom.globalconfs')
-- require("custom.dashconfs")
-- require("custom.wikiconfs")
require("custom.vimtexconfs")

return M
