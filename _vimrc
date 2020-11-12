" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim
set hidden

set guioptions-=T "remove toolbar
set lines=999 columns=999
colorscheme srcery

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
set encoding=utf-8
let g:airline_powerline_fonts = 1
set guifont=Source\ Code\ Pro\ for\ Powerline:h11:cANSI
let g:airline#extensions#tabline#enabled = 1 " create tab for buffers
let g:airline_section_warning = ''
let g:airline_section_error = ''

set number " Show current line number
set relativenumber " Show relative line numbers


" tab shift width setting
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

"-------------------------------------------------------------------------------
" imports
"-------------------------------------------------------------------------------
source ~/Vim/_vimrc.maps
" Windows only
if has('win32')
	source ~/Vim/_vimrc.win
endif

