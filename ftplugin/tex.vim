nnoremap <buffer> <leader>u :call Addpackage()<cr>
function! Addpackage(...)
	" Look backwards for a line where a package is included or the
	" documentclass. If neither exists line will be assigned to 0.
	let line = search('^\\\(usepackage\|documentclass\)\[\=\S*]\={\S\+}', 'ncb')
	if empty(a:0)
		call append(line, '\usepackage{}')
		call cursor(line + 1, 13) | startinsert
	elseif search('\\usepackage{' . a:1 . '}', 'n')
		" Exit if the package is already included.
		echo "Package already added." | return
	else
		call append(line, '\usepackage{' . a:1 . '}')
	endif
endfunction

nnoremap <buffer> <leader>b :call Mkenviroment('')<left><left>
function! Mkenviroment(...)
	if exists("a:1")
		let pkg = a:1
	else
		let pkg = ''
	endif
	let @a = '\begin{' . pkg. '}' . "\n" . '\end{' . pkg . '}'
	put a
	normal! O
	startinsert
endfunction

setlocal foldmarker=<<<,>>>

vnoremap <leader>e :<c-u>call Visualwrap('\placeholder{', '}')<cr>
nnoremap <buffer> <leader>o :execute '!xdg-open' expand('%:p:r'). '.pdf &'<cr>
