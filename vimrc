call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colors twilight
set number
set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin on
set history=1000
set hlsearch

filetype indent plugin on

:set softtabstop=3 shiftwidth=3 expandtab

set ruler                  	" show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set showcmd                	" show partial commands in status line and
set ignorecase			" ignore case on search
set nu				" shows line numbers
set guioptions-=T 		" removes toolbar
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

au VimEnter * silent! cd %:h

set showcmd
let mapleader = ","
let g:sparkup='~/.vim/bundle/vim-sparkup' 
let g:sparkupExecuteMapping='<D-e>'
imap ii <Esc>
