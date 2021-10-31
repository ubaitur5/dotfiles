
vim.o.completeopt="menu,menuone,noselect"
local cmp = require'cmp'
cmp.setup({
  snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
      },
   mapping = {
     ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-2), { 'i', 'c' }),
     ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(2), { 'i', 'c' }),
     ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
     ['<C-e>'] = cmp.mapping({
       i = cmp.mapping.abort(),
       c = cmp.mapping.close(),
     }),
     ['<CR>'] = cmp.mapping.confirm({ select = true }),
   },
   sources = cmp.config.sources({
     { name = 'nvim_lsp' },
     { name = 'vsnip' }, -- For vsnip users.
     { name = 'buffer' },
     { name = 'path' },
   })
 })
 


 -- Use buffer source for `/`.
 cmp.setup.cmdline('/', {
   sources = {
     { name = 'buffer' },
   }
 })

 -- Use cmdline & path source for ':'.
 cmp.setup.cmdline(':', {
   sources = cmp.config.sources({
     { name = 'path' }
   }, {
     { name = 'cmdline' }
   })
 })



-- Autopairs
require('nvim-autopairs').setup{}

--Automatically enter '(' when calling a function
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())
