call plug#begin(expand('~/.config/nvim/plugged'))
" Additional Syntax Highlighting
Plug 'sheerun/vim-polyglot'
" Go
Plug 'fatih/vim-go'
" Rust
Plug 'rust-lang/rust.vim'
Plug 'fannheyward/coc-rust-analyzer'
" Dart
Plug 'dart-lang/dart-vim-plugin'
" C#
Plug 'omnisharp/omnisharp-vim'
"Coc
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc-tsserver'
Plug 'neoclide/coc-json'
Plug 'neoclide/coc-yaml'
Plug 'neoclide/coc-prettier'
Plug 'josa42/coc-sh'
Plug 'tjdevries/coc-zsh'
Plug 'neoclide/coc-git'
Plug 'fannheyward/coc-xml'
Plug 'iamcco/coc-svg'
" Editor
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
" tpope
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
" Colors
Plug 'joshdick/onedark.vim'
call plug#end()
" Colorscheme
if (has('nvim'))
   let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
" Fixes colors in Alacitty with tmux
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
endif
colorscheme onedark
" Cursorline
set cursorline
set colorcolumn=80
" Settings
syntax on
set ruler
set nowrap
set noswapfile
set undodir=~/.vim/undodir
set number
set relativenumber
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set noerrorbells
set nohlsearch
set incsearch
set ignorecase
set smartcase
set smartindent
set fileformats=unix,dos,mac
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
" Lightline
let g:lightline = { 'colorscheme': 'onedark' }
" External files
source $HOME/.config/nvim/coc.vim

let mapleader = " "

" Bindings
noremap <leader>/ :Commentary<cr>

" FZF
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>F :Rg<CR>

if executable('rg') 
    let g:rg_derive_root='true'
endif
