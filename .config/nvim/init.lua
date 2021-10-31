require('plugins')
require('lsp')
require('treesitter')



vim.opt.termguicolors=true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.cursorline=true
vim.opt.mouse="a"
vim.opt.hidden=true
vim.opt.ignorecase=true
vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.clipboard = "unnamedplus" -- copy/paste to another apps
vim.g.mapleader=" "
vim.opt.updatetime=300
vim.wo.wrap=false
vim.opt.shortmess = vim.opt.shortmess + 'c'

--Lualine
require('lualine').setup{
  options = {
    theme='solarized'
  }
    }

--Setting colorscheme
-- require('github-theme').setup({
--   theme_style = "dark",
--   function_style = "italic",
--   colors = {hint = "orange", error = "#ff0000"}}
--   )
vim.cmd[[colorscheme solarized]]

--to automatically run :PackerCompile whenever plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


--Keybindings
vim.api.nvim_set_keymap('n', '<c-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-p>', ':FZF<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-s>', ':w<CR>', { noremap = true, silent = true })



--Vsnip
vim.cmd[[imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']]

