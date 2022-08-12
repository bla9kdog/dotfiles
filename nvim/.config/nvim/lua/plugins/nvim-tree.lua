local keymap = require('lib.utils').keymap

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "<C-t>", action = "" },
        { key = "-", action = "" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

keymap('n', '<C-n>', ':NvimTreeToggle<CR>')
