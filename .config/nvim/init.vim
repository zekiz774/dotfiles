" Honski Desgin Vimrc
" ----------------------------- General Settings ----------------------

set nocompatible
" set visualbell

" enable pattern highlighting, ignorecase and incremental searching
set hlsearch
set ignorecase
set incsearch

" activate line numbers
set number
" set relativenumber

" show commands and insert mode in status bar
set showcmd

" set spaces and tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smarttab

" enable syntax highlighting
syntax enable

" enough for line numbers + gutter within 80 standard
"set textwidth=72

" faster scrolling
set ttyfast

" better command-line completion
set wildmenu

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" --------------------------- Plugins ---------------------------------

" plugin options
set t_Co=256
let g:python_highlight_all=1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" plugin manager
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax'
Plug 'gabrielelana/vim-markdown'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'github/copilot.vim'

call plug#end()



" disable arrow keys (vi muscle memory)
" noremap <up> :echoerr "Umm, use k instead"<CR>
" noremap <down> :echoerr "Umm, use j instead"<CR>
" noremap <left> :echoerr "Umm, use h instead"<CR>
" noremap <right> :echoerr "Umm, use l instead"<CR>
" inoremap <up> <NOP>
" inoremap <down> <NOP>
" inoremap <left> <NOP>
" inoremap <right> <NOP>

" window resizing
noremap <C-h> <C-w>>
noremap <C-l> <C-w><
noremap <C-k> <C-w>+
noremap <C-j> <C-w>-

" Hotkeys
inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>

map ; :Files<CR>
nnoremap <C-A> ggVG

" open NERDtree
map <C-o> :NERDTreeToggle<CR>

" set window split to right and below
set splitright splitbelow

" set colorscheme
colorscheme nord
