" .vimrc

" Use Vim defaults
set nocompatible

" Attempt to apply intelligent auto-indenting based on file type
filetype indent plugin on

" Enable syntax highlighting
syntax on
colo elflord

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

