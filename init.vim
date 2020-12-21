" Define OS variable
let s:is_win = has('win32') || has('win64')
let s:is_mac = !s:is_win && (has('mac') || has('macunix') || has('gui_macvim')
            \ || system('uname') =~? '^darwin')

if !has('nvim')
	if s:is_win
		let $DOTVIM = expand('$HOME/Vim')
	else
		let $DOTVIM = expand('$HOME')
	endif
else
	if s:is_win
		let $DOTVIM = expand('$HOME\AppData\Local\nvim')
	else
		let $DOTVIM = expand('$HOME/.config/nvim')
	endif
endif
"-------------------------------------------------------------------------------
" Dein
"-------------------------------------------------------------------------------
if s:is_win
	let $DEIN = expand('$HOME\.cache\dein')
else
	let $DEIN = expand('$HOME/.cache/dein')
endif
if &compatible
  set nocompatible
endif
set runtimepath+=$DEIN/repos/github.com/Shougo/dein.vim

if dein#load_state($DEIN)
  call dein#begin($DEIN)

  call dein#add('$DEIN/repos/github.com/Shougo/dein.vim')
	" Add or remove your plugins here like this:
	call dein#add('Shougo/defx.nvim')
	call dein#add('Shougo/denite.nvim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set number " Show current line number
set relativenumber " Show relative line numbers
set guioptions-=T "remove toolbar


" tab shift width setting
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

syntax enable
set nobackup
" colorscheme solarized
colorscheme srcery
set ai "Auto indent
set si "Smart indent


"-------------------------------------------------------------------------------
" imports
"-------------------------------------------------------------------------------
if s:is_win
	source $DOTVIM\_vimrc.win
	source $DOTVIM\.vimrc.maps
else
	source $DOTVIM/.vimrc.maps
	source $DOTVIM/denite.rc.vim
	set clipboard=unnamedplus
endif


