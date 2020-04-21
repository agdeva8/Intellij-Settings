
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

Plugin 'Vundle.vim'
" Plugin 'AutoComplPop'

call vundle#end()               " required
filetype plugin indent on       " required

set mouse=a
set notermguicolors
inoremap jj <Esc>
" inoremap <Tab> <C-Space>

"
" changing cursor for different modes in vim 
autocmd InsertEnter,InsertLeave * set cul!

