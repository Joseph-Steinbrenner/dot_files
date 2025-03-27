call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'nordtheme/vim'
Plug 'psliwka/vim-smoothie'       
call plug#end()

" ****** GENERAL SETUP ******
set relativenumber
set ignorecase
 
" ****** THEME CONFIG START ******
set nocompatible
if (has("termguicolors"))
  set termguicolors
endif
syntax enable
colorscheme nord
" ****** THEME CONFIG END ******

let mapleader = " " 

" BUFFER MAPPINGS
nnoremap <leader>q :q<CR> " 'File Quit' 
nnoremap <leader>w :w<CR> " 'File Save'
nnoremap <leader>wv :vs<CR>
nnoremap <leader>wh :split<CR>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" SEARCH MAPPINGS
nnoremap <leader>sf :Files<CR>
nnoremap <leader>sg :GFiles<CR>
" INSERT MODE MAPPINGS
inoremap jk <ESC> " Exit Insert Mode with jk 
