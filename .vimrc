set nocompatible     " be iMproved, required
set background=dark  " Setting dark mode
set relativenumber
set cursorline       "highlight current line
set vb t_vb=         "No more beeps
set number
"set mouse=a         "Enable mouse usage in terminal
set noshowmode       "Disable mode indicator (replaced by airline plugin)
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
filetype off         " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Examples:
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'

Plugin 'dense-analysis/ale'


"Language packs
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * ++nested colorscheme gruvbox " Enable gruvbox theme
let g:gruvbox_contrast_dark = 'hard'            " High contrast

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set laststatus=2 "Fixes weird bug with lightline

" Permanent undo
set undodir=~/.vim/undodir
set undofile
