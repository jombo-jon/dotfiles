" VIMRC
" Open at startup
" autocmd VimEnter * NERDTree
" Basic

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

" ###########################################
" Personal LATEX Shortcuts
" Image
imap timg <CR>\begin{figure}[ht]<CR>\centering<CR>\includegraphics[width=\linewidth]{figures/ImageFileName}<CR>\caption{WidePicture}\label{fig:view}<CR>\end{figure}<ESC>?ImageFileName<CR>viwdi

" Chapter, Section, Subsection, ...
imap tchap <CR>\chapter{ChapterName}%\label{chap:}<CR><ESC>?ChapterName<CR>viwdi
imap tsec <CR>\section{ChapterName}%\label{sec:}<CR><ESC>?ChapterName<CR>viwdi
imap tsub <CR>\subsection{ChapterName}%\label{sec:}<CR><ESC>?ChapterName<CR>viwdi
imap tssub <CR>\subsubsection{ChapterName}%\label{sec:}<CR><ESC>?ChapterName<CR>viwd
imap tequ <CR>\begin{equation}\label{eq:EquationLabel}<CR><CR>\end{equation}<CR>where:\\<CR>\begin{tabular}{C{0.05\linewidth}p{0.9\linewidth}}<CR>$x$ & fisrt argument \\ <CR>\end{tabular}<ESC>?EquationLabel<CR>viwdi
imap ttab <CR>\begin{table}<CR>\centering<CR>\label{tab:TableLabel}<CR>\begin{tabular}{}<CR>\end{tabular}<CR>\end{tabular}<CR>\end{table}<ESC>?TableLabel<CR>viwdi

" Vim special clipboard alsway in clipboard  "+
set clipboard=unnamedplus

" Nertree
nnoremap <C-n> :NERDTreeToggle<CR>

" ###########################################
" Spellcheck
set spelllang=en
"set spellfile=$HOME/Dropbox/vim/spell/en.utf-8.add
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'

" Spell check enable for files : tex
autocmd FileType tex set spell spelllang=en
nnoremap s= z=

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
let g:updatetime = 100


"Vundle Plugin Manage
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/bundle/gruvbox/colors/

call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" GruvBox
Plugin 'morhetz/gruvbox'

" Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'

" VIM-Lexical
Plugin 'reedes/vim-lexical'

" NerdTree
Plugin 'scrooloose/nerdtree'

" 

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
