
augroup exe_code
	autocmd!
	autocmd FileType python nnoremap <buffer><leader>rc
				\ :sp <CR> :term python3 %<CR> :startinsert<CR>
augroup end

