set nocompatible
set autoread
filetype off
syntax on

execute pathogen#infect()

let g:gruvbox_termcolors=16
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE

highlight clear ALEErrorSign
highlight clear ALEWarningSign
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smartindent
set smarttab
set laststatus=2
nmap <F6> :NERDTreeToggle<CR>
nmap <F5> :!roborun<CR>
