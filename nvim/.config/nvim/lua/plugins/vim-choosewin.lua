local keymap = require('lib.utils').keymap

keymap('n', '-', '<Plug>(choosewin)')

vim.cmd([[
	let g:choosewin_color_label = {
	      \ 'gui': ['#c678dd', '#13151a', 'bold'],
	      \ 'cterm': [9, 16]
	      \ }
	let g:choosewin_color_label_current = {
	      \ 'gui': ['#45454b', 'white', 'bold'],
	      \ 'cterm': [9, 16]
	      \ }
	let g:choosewin_color_other = {
	      \ 'gui': ['#13151a', 'white'],
	      \ 'cterm': [240, 0]
	      \ }
]])
