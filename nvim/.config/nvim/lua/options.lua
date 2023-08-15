-- Helpers
local g = vim.g
local o = vim.o

----------------------------------------------------------------
-- Options
----------------------------------------------------------------

-- Clipboard & Encoding
o.encoding = 'UTF-8'
o.clipboard = 'unnamedplus'

-- Enable 24bit color support
o.termguicolors = true

-- Mouse support
o.mouse = 'a'

-- Do not save when switching buffers
o.hidden = true

-- Reduce update time
o.timeoutlen = 500
o.updatetime = 300

-- # of lines below/above the cursor
o.scrolloff = 8

-- User experience
o.number = true
o.relativenumber = true
-- o.noruler = true
o.title = true
o.signcolumn = 'number'
o.cursorline = true
o.expandtab = true
o.tabstop = 4
o.softtabstop = 4
o.showtabline = 2
o.laststatus = 2
o.shiftwidth = 4
o.wrap = true
o.splitbelow = true
o.showmode = false
o.expandtab = true

-- Persist Undo
o.undofile = true

-- Python path
g.python3_host_prog = '/usr/bin/python3'
-- g.python3_host_prog = '/opt/homebrew/bin/python3'
