set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'valloric/youcompleteme'

call vundle#end()

let g:gruvbox_contrast_dark='hard'
let g:gruvbox_termcolors=256

set background=dark
set encoding=utf-8
set number relativenumber
set tabstop=4
set autoindent

colorscheme gruvbox

highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

nmap <F6> :NERDTreeToggle<CR>
nmap <F9> :!gradle test<CR>
nmap <F10> :!gradle installDebug<CR>
