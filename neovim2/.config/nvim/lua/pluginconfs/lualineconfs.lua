require('lualine').setup({
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      section = {
          buffers_color = {
            inactive = 'guibg', -- Color for inactive buffer.
          },
        },
})
