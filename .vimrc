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

syntax on
