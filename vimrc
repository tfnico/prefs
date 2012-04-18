" pathogen
call pathogen#runtime_append_all_bundles() 

" syntax
syn on
" 4 spaces for tabs
set expandtab
set tabstop=4
set shiftwidth=4
" Nice search
set incsearch hlsearch
" Theme
set background=dark
set showcmd

colorscheme solarized

command -nargs=? Swrite :w !sudo tee %

" Share reg between terminals:
set clipboard+=unnamed
