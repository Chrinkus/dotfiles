" .vimrc

" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Auto plugin installation found @
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'                  " Favourite colorscheme

Plug 'vim-airline/vim-airline'          " Status line pretty-upper

Plug 'jiangmiao/auto-pairs'             " Auto pair insertion/deletion

Plug 'octol/vim-cpp-enhanced-highlight' " C++ syntax awareness

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

" If filetype-specific indenting is not enabled, keep same indent as line above
set autoindent

" Display cursor position on the last line of the screen
set ruler

" Display line numbers
set number

" Display line at column 81
set colorcolumn=81

" Alternative to colorcolumn @ 80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" Indentation and tab settings
set shiftwidth=4
set softtabstop=4
set tabstop=4
autocmd BufRead *.hpp,*.cpp,*.js,*.h,*.c set expandtab

" Press Space to turn off highlighting and clear any message already displayed
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
