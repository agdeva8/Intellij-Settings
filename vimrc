set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" all vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'preservim/nerdtree'

" vim-commentary 
Plugin 'tpope/vim-commentary'

" plugin for statushightlighting 
Plugin 'vim-airline/vim-airline'

" " systax checking 
" Plugin 'vim-syntastic/syntastic' 
" ALE is doing good job
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" remapping esc key 
imap jj <Esc>

" Turn on Line Number 
set nu

set showcmd " Show (partial) command in status line.
set showmatch  " Show matching brackets.
set ignorecase " Do case insensitive matching
set smartcase  " Do smart case matching
set incsearch  " Incremental search
set autowrite  " Automatically save before commands like :next and :make
set hidden " Hide buffers when they are abandoned

" System Clipboard
set clipboard=unnamed

inoremap <C-v> <ESC>"+p
inoremap <C-c> "+y
vnoremap <C-d> "+m 

let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
" augroup myCmds
" au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END

" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" Airline conifiguration for status line 
 " let g:airline#extensions#default#layout = [
 "      \ [ 'a', 'b', 'c' ],
 "      \ [ 'x', 'y', 'z' ]
 "      \ ]"
" Syntastic syntax checker options 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*"
  let g:airline#extensions#ale#enabled = 1
  let g:airline#extensions#whitespace#enabled = 0

  "let g:airline#extensions#syntastic#enabled = 1
""
  "let airline#extensions#syntastic#error_symbol = 'Err:'
  "let airline#extensions#syntastic#stl_format_err = '%E{[%fe(#%e)]}'
  "let airline#extensions#syntastic#warning_symbol = 'Warn:'
  "let airline#extensions#syntastic#stl_format_warn = '%W{[%fw(#%w)]}'

" let g:syntastic_stl_format = "[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]"

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
" set list
set nolist
" set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number

" Set status line display
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"
