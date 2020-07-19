set nocompatible
filetype off

" Display line numbers in each line
set number

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'jaredgorski/spacecamp'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on
nnoremap <silent> <F2> :NERDTreeToggle <CR> 

" Remove leading ^G
let g:NERDTreeNodeDelimiter = "\u00a0"

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let python_highlight_all=1
syntax on
set backspace=indent,eol,start

" ColorScheme
autocmd vimenter * colorscheme gruvbox
set background=dark

" Jedi config
autocmd FileType python setlocal completeopt-=preview
set clipboard=unnamed

" Add 4 spaces for each tab
set ts=4

" It is used to control the number of tabs that will be used by vim when tab key is pressed
set softtabstop=4

" It is used to control the number of columns when left or right shift is pressed
set shiftwidth=8

" It is used for automatic text wrapping
set textwidth=79

" It is used to convert all new tab character into space
set expandtab

" It is used for adding automatic indention in vim
set autoindent

" Highlight the matching part of the brackets, (), {} and []
set showmatch

set encoding=utf-8

" Highlight search results, include search and ignore case
set hls is ic

" Split screen config
set splitbelow
set splitright

" Split navigations
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Workaround for WSL vim not being able to access system clipboard
" copy (write)highlighted text to .vimbuffer
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>
