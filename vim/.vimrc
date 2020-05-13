" vim-plug (Neovim package manager)
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()

set number
syntax on
set smartindent
colorscheme onedark

" 2 space tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" Disable evil auto word wrapping
set formatoptions-=t
set wrap
set linebreak

" Clear search highlighting on double-esc (https://vi.stackexchange.com/a/5392/19754)
nnoremap <esc> :noh<return><esc>

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" do not highlight words when searching for them. it's distracting.
" set nohlsearch
