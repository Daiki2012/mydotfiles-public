"-------------------------------------------------------------------------------
" Dein
"-------------------------------------------------------------------------------
if &compatible
  set nocompatible
endif
set runtimepath+=/Users/daikiharaguchi/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/daikiharaguchi/.cache/dein')
  call dein#begin('/Users/daikiharaguchi/.cache/dein')

  call dein#add('/Users/daikiharaguchi/.cache/dein/repos/github.com/Shougo/dein.vim')
	" Add or remove your plugins here like this:
	call dein#add('Shougo/defx.nvim')

  call dein#end()
  call dein#save_state()
else
	echo('dein has some problem!')
endif

filetype plugin indent on
syntax enable



set guifont=Sauce\ Code\ Pro\ Light\ Nerd\ Font\ Complete\ Windows\ Compatible:h15

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set number " Show current line number
set relativenumber " Show relative line numbers

" tab shift width setting
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

syntax enable
set background=dark
set nobackup
" colorscheme solarized
colorscheme srcery
set ai "Auto indent
set si "Smart indent


"-------------------------------------------------------------------------------
" imports
"-------------------------------------------------------------------------------
source /Users/daikiharaguchi/.config/nvim/.vimrc.maps
source /Users/daikiharaguchi/.config/nvim/.vimrc.debug
