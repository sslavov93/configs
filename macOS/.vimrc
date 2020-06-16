set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tomasiser/vim-code-dark'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on

set hlsearch
set tabstop=4
set autoindent
set wildmenu
set ruler
set number
autocmd vimenter * NERDTree

colorscheme codedark

