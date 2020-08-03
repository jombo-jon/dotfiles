" VIMRC
" Open at startup
autocmd VimEnter * NERDTree
"Basic

filetype plugin indent on
"set termguicolors
syntax on

set number relativenumber
set background=dark

"let g:gruvbox_italic=1
colorscheme gruvbox
set mouse=a

if &term =~'256color'
    set t_ut=
  endif

"Settings
set shell=/usr/bin/zsh
set tabstop=4
set expandtab
set noswapfile
set showcmd

"Leader Key
"let mapleader ="c-m" 
let maplocalleader = "\\"
"Remap the key jj for ESC in insert mode

imap jj <Esc>

let NERDTreeShowHidden=1


"Remap the controls for split windows in VIM
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-S-B> :! clear; python3 %<CR>
inoremap <C-S-B> <ESC>:w<CR>:! clear; python3 %<CR>
vnoremap <C-S-B> <ESC>:w<CR>:! clear; python3 %<CR>

"Save as Sudo
cmap w!! w !sudo tee > /dev/null %

" LaTeX Engine
let g:livepreview_engine = 'pdflatex'
let g:livepreview_previewer = 'evince'
let g:livepreview_cursorhold_recompile = 0

"Vundle Plugin Manage
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/bundle/gruvbox/colors/

call vundle#rc()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" GruvBox
Plugin 'morhetz/gruvbox'

" Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'

" NerdTree
Plugin 'scrooloose/nerdtree'

" Commentary
Plugin 'tpope/vim-commentary'

" YouCompleteMe
"Plugin 'valloric/youcompleteme'

" Tabular - align text
Plugin 'godlygeek/tabular'

" LaTeX Plugin for Editing
" Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on
