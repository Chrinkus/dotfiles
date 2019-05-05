" .vimrc

" Auto plugin installation found @
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify directory for plugins
call plug#begin('~/.vim/plugged')

" Favourite colorscheme
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

" Use Vim defaults
set nocompatible

" Attempt to apply intelligent auto-indenting based on file type
filetype indent plugin on

" Enable syntax highlighting
syntax on
colo gruvbox
set bg=dark

" If filetype-specific indenting is not enabled, keep same indent as line above
set autoindent

" Display cursor position on the last line of the screen
set ruler

" Display line numbers
set number

" Indentation and tab settings
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

