local autocmd = vim.api.nvim_create_autocmd

-- vim.cmd[[hi @text.emphasis gui=italic]]
-- require('custom.globalconfs')
-- require("custom.dashconfs")
-- require("custom.wikiconfs")
-- require("custom.vimtexconfs")

-- vim.g.vimwiki_key_mappings = {
--      all_maps= 1,
--      global= 1,
--      headers= 1,
--      text_objs= 1,
--      table_format= 0,
--      table_mappings= 1,
--      lists= 1,
--      links= 0,
--      html= 1,
--      mouse= 1,
-- }
-- vim.g.lists_filetypes = {'wiki','markdown'}
-- vim.g.wiki_root = '~/Abuwiki'


-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- autocmd("Wikifolds", {
--   pattern = 'wiki',
--   command = 'set foldmethod="expr"'
-- })
