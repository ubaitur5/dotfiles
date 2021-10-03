" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
 
set t_Co=256 

set termguicolors
set background=dark
let g:onedark_style = 'darker'
colorscheme onedark

