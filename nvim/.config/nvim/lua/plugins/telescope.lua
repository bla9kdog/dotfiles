local keymap = require('lib.utils').keymap

keymap('n', '<C-f>', ':Telescope find_files<CR>')
keymap('n', '<A-f>', ':Telescope live_grep<CR>')
keymap('n', '<A-y>', ':Telescope buffers<CR>')
keymap('n', '<leader>fh', ':Telescope help_tags<CR>')

--vim.cmd([[
--nnoremap <C-f> <cmd>lua require('telescope.builtin').find_files()<cr>
--nnoremap <A-f> <cmd>lua require('telescope.builtin').live_grep()<cr>
--nnoremap <A-y> <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
--]])
