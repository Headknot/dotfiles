set nocompatible 
filetype off     

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
                                         
set t_Co=16                                                                                     
syntax on                                                  
set background=dark "dark"                       
colorscheme solarized                                      
filetype plugin on
set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch
let python_highlight_all = 1 
let g:solarized_termtrans = 1
autocmd bufwritepost .vimrc source ~/.vimrc
autocmd vimenter * NERDTree
autocmd vimenter * source ~/.vimrc

