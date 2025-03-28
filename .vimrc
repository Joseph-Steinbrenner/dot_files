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
set timeoutlen=500 
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
" ****** TERMINAL ( CLEAR + CLOSE ) ******
tnoremap <c-d> :Tclear<CR><c-d>
" ****** TERMINAL ( ENABLE SCROLL MODE ) ****** 
tnoremap <c-n> <c-\><c-n>

" ****** BUFFER FILE ( QUIT ) ******
nnoremap <leader>q :q<CR>
" ****** BUFFER FILE ( FORCE QUIT ) ******
nnoremap <leader>qq :q!<CR>
" ****** BUFFER FILE ( SAVE ) ******
nnoremap <leader>w :w<CR>

" ****** BUFFER SPLIT ( VERTICAL ) ******
nnoremap <leader><leader>v :rightbelow vs new<CR>
" ****** BUFFER SPLIT ( HORIZONTAL ) ******
nnoremap <leader><leader>h :botright split new<CR>

" ****** BUFFER NAVIGATION ( LEFT BUFFER ) ******
nnoremap <c-h> <c-w>h
" ****** BUFFER NAVIGATION ( DOWN BUFFER ) ******
nnoremap <c-j> <c-w>j
" ****** BUFFER NAVIGATION ( UP BUFFER ) ******
nnoremap <c-k> <c-w>k
" ****** BUFFER NAVIGATION ( RIGHT BUFFER ) ******
nnoremap <c-l> <c-w>l

" ****** FILES SEARCH ( PROJECT ) ******
nnoremap <leader>pf :Files<CR>
" ****** FILES SEARCH ( PROJECT GIT TRACKED ) ******
nnoremap <leader>pg :GFiles<CR>

" ****** EXIT INSERT MODE ****** 
inoremap jk <ESC> " Exit Insert Mode with jk 

" ****** JAVA - MAVEN CLEAN ******
nnoremap mac :botright term ++close<CR>mvn clean<CR>
" ****** JAVA - MAVEN INSTALL ******
nnoremap mai :botright term ++close<CR>mvn install<CR>
" ****** JAVA - MAVEN SPRING BOOT RUN ******
nnoremap msb :botright term ++close<CR>mvn spring-boot:run<CR>

" ****** JAVA - COMMENT SINGLE ( NORMAL ) ******
autocmd FileType java nnoremap <Leader>cc :s/^/\/\/ /<CR>
" ****** JAVA - COMMENT SINGLE ( VISUAL ) ******
autocmd FileType java vnoremap <Leader>cc :s/^/\/\/ /<CR>

" ****** JAVA - UNCOMMENT SINGLE ( NORMAL ) ******
autocmd FileType java nnoremap <Leader>cu :s/^\/\/ //<CR>
" ****** JAVA - UNCOMMENT SINGLE ( VISUAL ) ******
autocmd FileType java vnoremap <Leader>cu :s/^\/\/ //<CR>

