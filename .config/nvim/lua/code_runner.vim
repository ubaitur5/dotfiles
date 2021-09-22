
augroup exe_code
	autocmd!
	autocmd FileType python nnoremap <buffer><leader>r
				\ :sp <CR> :term python3 %<CR> :startinsert<CR>
augroup end

