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
set timeoutlen=200 
set termwinsize=10x " Set terminal Height to 10 rows
let g:netrw_banner = 0

" ****** THEME CONFIG ******
set nocompatible
if (has("termguicolors"))
  set termguicolors
endif
syntax enable
colorscheme nord

" ****** FZF CONFIG ******
let g:fzf_layout = {'down':'30%'}
autocmd! FileType fzf
autocmd FileType fzf set laststatus=0 noshowmode noruler
	\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" ****** LEADER REMAPPING ******
nnoremap <space> <nop>
let mapleader = " " 

" ****** TERMINAL ( OPEN ) ******
nnoremap <leader>t :botright term ++close<CR>

" ****** BUFFER FILE ( QUIT ) ******
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>
" ****** BUFFER FILE ( SAVE ) ******
nnoremap <leader>w :w<CR>

" ****** BUFFER SPLIT ( VERTICAL ) ******
nnoremap <leader><leader>v :rightbelow vs new<CR>
" ****** BUFFER SPLIT ( HORIZONTAL ) ******
nnoremap <leader><leader>h :botright split new<CR>

" ****** BUFFER NAVIGATION ******
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" ****** SEARCH BY FILES ( ALL ) ******
nnoremap <leader>pf :Files<CR>
" ****** SEARCH BY FILES ( GIT TRACKED ) ******
nnoremap <leader>pg :GFiles<CR>

" ****** EXIT INSERT MODE ****** 
inoremap jk <ESC> " Exit Insert Mode with jk 
