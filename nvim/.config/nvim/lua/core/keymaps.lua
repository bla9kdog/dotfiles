-- Helpers
local g = vim.g
local o = vim.o

----------------------------------------------------------------
-- Keymaps
----------------------------------------------------------------

local keymap = require('utils').keymap

-- Map leader to space
g.mapleader = ' '
g.maplocalleader = ' '

-- Switch tabs
keymap('n', '<C-j>', ':tabprevious<CR>')
keymap('n', '<C-k>', ':tabnext<CR>')

-- Resize split
keymap('n', '<leader>hd', '<cmd>resize -4<CR>')
keymap('n', '<leader>hi', '<cmd>resize +4<CR>')
keymap('n', '<leader>vd', '<cmd>vertical resize -4<CR>')
keymap('n', '<leader>vi', '<cmd>vertical resize +4<CR>')

-- Hide search highlight
keymap('n', '<leader>q', '<cmd>noh<CR>')

-- Source file
keymap('n', '<leader>s', '<cmd>source %<CR>')
