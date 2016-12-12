set nocompatible
filetype plugin on

" encoding
set encoding=utf-8

" line number
set relativenumber
set number

" cursor
set gcr=n:blinkon0

" gui
if has("gui_running")
    colorscheme elflord
    set lines=42 columns=128
    set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
endif

" buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" window
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

call plug#end()

" airline
:set laststatus=2

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.paste = '∥'
