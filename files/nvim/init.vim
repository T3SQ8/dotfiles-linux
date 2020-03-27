" Plugins{{{
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
"}}}

" Functions{{{
" Change color scheme
function! Background()
	if &background == "light"
		set background=dark
	else
		set background=light
	endif
endfunction
"}}}

" Settings{{{
" Color scheme
colorscheme solarized

" Lines
set number relativenumber cursorline

" Open splits at the bottom and right
set splitbelow splitright

" Text wrapping
set nowrap

" Searching
set hlsearch ignorecase

" Enable mouse for normal, visual and command-line modes
set mouse=nvc

" Indentation
set smartindent

" Folding
set foldmethod=marker

" Key timeout
set notimeout
"}}}

" Keybindings{{{
let mapleader=" "
nnoremap <leader>b :call Background()<cr>
nnoremap <leader>w :set wrap! linebreak<cr>
nnoremap <leader>en :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>n ]sz=
nnoremap <leader>p [sz=
vnoremap <c-c> "+y
inoremap <c-v> <esc>l"+Pa
nnoremap <c-a> ggVG

" Disable keys
nnoremap <s-q> <nop>
nnoremap <space> <nop>
nnoremap q: <nop>
"}}}
