" Vim    
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set relativenumber
set laststatus=2
set noshowmode
set cursorline
set backspace=indent,eol,start

" Indentación
set tabstop=4 "A cuántos espacioes equivale un \t"
set shiftwidth=4 "Número de columnas de una indentación"
set softtabstop=4 "Cuantas columnas equivale un tab o backspace"
set autoindent "Mantiene el mismo formato de indentación"
set expandtab "Las indentaciones se vuelven espacios, no \t"

autocmd InsertLeave * silent! pclose

call plug#begin('~/.vim/plugged')

" Temas
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'

" Status Bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Tree
Plug 'scrooloose/nerdtree'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" IDE
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" THEMES

set background=dark

" Dracula
let g:dracula_colorterm = 0
colorscheme dracula

"Gruvbox
"colorscheme gruvbox
"set bg=dark

"Papercolor
"colorscheme PaperColor

" HOTKEYS
let mapleader=" "

" Nerdtree
let NERDTreeQuitOnOpen=1

"Atajos de pluggins
nmap <Leader>nt :NERDTreeFind<CR>

" Atajos de vim
nmap <Leader>wq : wq<CR>
nmap <Leader>q : q<CR>
