nnoremap <buffer> <c-x> :call Todo_complete()<cr>
function! Todo_complete()
	execute "normal! Ix" strftime("%Y-%m-%d") ""
endfunction

nnoremap <buffer> <leader>c :g/^x\s\+/m$<cr>
