set nocompatible              " be iMproved, required
set background=dark           " Setting dark mode
set relativenumber
set vb t_vb= "No more beeps
set number
set mouse=a "Enable mouse usage in terminal
set noshowmode "Disable mode indicator (replaced by airline plugin)

filetype off                  " required

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
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


autocmd vimenter * ++nested colorscheme gruvbox " Enable gruvbox theme
let g:gruvbox_contrast_dark = 'hard'            " High contrast
