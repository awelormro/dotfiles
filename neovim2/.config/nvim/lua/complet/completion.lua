-- vim: set fdm=marker:
--  Global variables settings {{{1
local cmp = require'cmp'
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

--   Global setup. {{{1
cmp.setup({
  --  snippet service provider {{{2
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  --   Setup for mappings {{{2
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(
      function(fallback)
        -- cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
        cmp_ultisnips_mappings.compose { "jump_forwards", "select_next_item" }(fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    ),
    ["<S-Tab>"] = cmp.mapping(
      function(fallback)
        cmp_ultisnips_mappings.jump_backwards(fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    ),
  }),
  --   nvim sources for completion {{{2
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'ultisnips' },
  }, {
    { name = 'buffer' },
    { name = 'path'   },
    { name = 'nerdfont'},
    {
      name = 'omni',
      option = {
        disable_omnifuncs = { 'v:lua.vim.lsp.omnifunc' }
      }
    },
  })
})

-- `/` cmdline setup.
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- `:` cmdline setup.
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})



