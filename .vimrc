set nocompatible     " be iMproved, required
set background=dark  " Setting dark mode
set relativenumber
set number
set cursorline       " highlight current line
set vb t_vb=         " No more beeps
set noshowmode       " Disable mode indicator (replaced by airline plugin)
set hlsearch         " Highlight search matches
set incsearch        " Highlight search matches in real time
"set mouse=a         " Enable mouse usage in terminal
set expandtab        " Spaces instead of tabs
set tabstop=2        " indent 2 spaces with tab
set shiftwidth=2     " indent 2 spaces with <<>>

filetype off         " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'vperaltac/onehalf', {'rtp': 'vim'}
Plugin 'dense-analysis/ale'
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set laststatus=2 "Fixes weird bug with lightline

" Permanent undo (it needs the dir undodir to exist)
set undodir=~/.vim/undodir
set undofile

colorscheme onehalfdark
