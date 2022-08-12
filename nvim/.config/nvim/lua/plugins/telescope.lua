vim.cmd([[
nnoremap <C-f> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <A-f> <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <A-y> <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]])
