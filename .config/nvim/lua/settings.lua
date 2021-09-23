vim.g.mapleader = ' ' --set <leader> key

vim.cmd[[set mouse=a]] --enable mouse

vim.cmd[[set nocompatible]]
vim.cmd[[filetype plugin on]]
vim.cmd[[set noshowmode]]

vim.cmd[[set nowrap]]
vim.o.completeopt="menuone,noselect"
vim.opt.cursorline=true
vim.opt.relativenumber=true
vim.o.hidden=true
vim.o.ignorecase = true

vim.o.clipboard = "unnamedplus" -- copy/paste to another apps

vim.opt.updatetime=50
