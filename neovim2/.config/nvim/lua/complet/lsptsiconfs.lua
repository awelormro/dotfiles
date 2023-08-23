
-- Init configs

require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = { 'pylsp', 'gopls', 'lua_ls', 'rust_analyzer' },
})

local nvim_lsp = require('lspconfig')
nvim_lsp.solargraph.setup{}
nvim_lsp.tsserver.setup{}
nvim_lsp.lua_ls.setup{}
nvim_lsp.pylsp.setup{}
