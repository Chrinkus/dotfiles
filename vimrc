" .vimrc

" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Auto plugin installation found @
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
" NEED curl for this to work!! Will silently fail otherwise.
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'                  " Favourite colorscheme
Plug 'joshdick/onedark.vim'		" Another sweet colorscheme

Plug 'vim-airline/vim-airline'          " Status line pretty-upper

Plug 'jiangmiao/auto-pairs'             " Auto pair insertion/deletion

Plug 'octol/vim-cpp-enhanced-highlight' " C++ syntax awareness

Plug 'tikhomirov/vim-glsl'		" syntax highlighting for GLSL

Plug 'alvan/vim-closetag'		" XML, HTML auto-closing

" Initialize plugin system
call plug#end()
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

" Use Vim defaults
set nocompatible

" Attempt to apply intelligent auto-indenting based on file type
filetype indent plugin on

" Enable syntax highlighting
syntax on
colo gruvbox
set bg=dark

" Airline settings
let g:airline_powerline_fonts=1
" Install 'fonts-powerline' package to display airline symbols

" If filetype-specific indenting is not enabled, keep same indent as line above
set autoindent

" Long line breaking behaviour
set breakindent	" Line breaks will continue at the same indentation level
set linebreak	" Line breaks will prefer to break on specific characters

" Display cursor position on the last line of the screen
set ruler

" Display line numbers
set number

" Display line at column 81
set colorcolumn=81

" Alternative to colorcolumn @ 80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" Close_tag settings
let g:closetag_filenames = '*.html,*.xml,*.ui'

" TAB abbreviations:
" sw	shiftwidth
" ts	tabstop
" sts	softtabstop

" GTK ui file settings
augroup gtk_ui_settings " {
	autocmd!
	autocmd BufNewFile,BufRead *.ui set sw=4 sts=4 ts=4
	autocmd BufNewFile,BufRead *.xml set sw=4 sts=4 ts=4
augroup END " }

" Indentation and tab settings
autocmd FileType json, JSON, css, html, set sw=4 sts=4 ts=4
autocmd FileType hpp, cpp, js set sw=4 sts=4 ts=4 et

" Press Space to turn off highlighting and clear any message already displayed
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
