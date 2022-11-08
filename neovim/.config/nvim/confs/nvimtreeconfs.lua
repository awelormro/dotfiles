require("nvim-tree").setup({
  sort_by = "case_sensitive",
    hijack_cursor = true,
    hijack_unnamed_buffer_when_opening = false,
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = false,
  },
  view = {
    adaptive_size = false,
	width=25,
	side='right',
    hide_root_folder = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  -- filters = {
    -- dotfiles = true,
  -- },
})
