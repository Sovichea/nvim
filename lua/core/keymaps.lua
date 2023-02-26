vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

-- line number setup
vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<A-w>', '<C-w>w') -- change window
vim.keymap.set('n', '<A-t>', '<C-PageUp>') -- change window
vim.keymap.set('c', 'qt', 'tabclose') -- close tab command 
