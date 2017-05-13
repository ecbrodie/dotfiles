set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Ryan's recommended plugins:
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete'
Plugin 'thoughtbot/pick.vim'
Plugin 'nono/vim-handlebars'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rvm'

Plugin 'wincent/command-t'

Plugin 'Blevs/vim-dzo'
Plugin 'keitanakamura/neodark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'

Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'mxw/vim-jsx'

Plugin 'matchit.zip'

" Other plugins. Use at your own risk.

" Plugin 'dhruvasagar/vim-table-mode'

" Plugin 'jceb/vim-orgmode'
" Plugin 'jpo/vim-railscasts-theme'

" Plugin 'Konfekt/FastFold'

" Plugin 'mattn/calendar-vim'

" Plugin 'tpope/vim-dispatch'
" Plugin 'tpope/vim-endwise'

" Plugin 'tpope/vim-speeddating'

" Plugin 'tomtom/tcomment_vim'
" Plugin 'AndrewRadev/splitjoin.vim'

call vundle#end()            " required
filetype plugin indent on    " required
