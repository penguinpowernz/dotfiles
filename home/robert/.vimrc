 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

"let Vundle manage Vundle
"required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'kien/ctrlp.vim.git'

map <leader>[ :NERDTreeToggle<CR>
map <leader>{ :NERDTreeFind<CR>

filetype off          " necessary to make ftdetect work on Linux
syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting

set cursorline        " highlight current line
set showmatch         " Cursor shows matching ) and }
set showmode          " Show current mode
set nobackup          " no *~ backup files
set ignorecase        " ignore case when searching
set smartcase         " ignore case if search pattern is all lowercase,case-sensitive otherwise

set autoindent        " auto indentation
set copyindent        " copy the previous indentation on autoindenting
set smarttab          " insert tabs on the start of a line according to context
set expandtab         " replace <TAB> with spaces
set softtabstop=2 
set shiftwidth=2