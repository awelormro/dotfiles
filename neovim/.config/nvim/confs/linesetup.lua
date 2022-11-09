require('lualine').setup {
  options = {
    -- theme = 'pywal-nvim',
    section_separators = { left = '', right = '' },
    inactive_sections_separator={ left = '', right = '' },
    
    
    component_separators = { left = '', right = '' },
    
    
    },    
    -- globalstatus = true,
    sections = { lualine_a = {
        { 'mode', fmt = function(str) return str:sub(1,1) end } },
        lualine_b = {'branch'} },
      inactive_sections = { lualine_a = {
        { 'mode', fmt = function(str) return str:sub(1,1) end } },
        lualine_b = {'branch'} },
    }
-- silver
-- gold
    -- #FFFFFF
