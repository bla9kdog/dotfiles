require("nvim-surround").setup()

vim.cmd('nmap "" ysiw"')
vim.cmd("nmap '' ysiw'")
vim.cmd('nmap (( ysiw(')
vim.cmd('nmap {{ ysiw{')
vim.cmd('nmap [[ ysiw[')
