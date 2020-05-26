" vim-plug (Neovim package manager)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'tomtom/tcomment_vim'
call plug#end()

set number
syntax on
"set smartindent
colorscheme onedark

" 2 space tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" Disable evil auto word wrapping
set formatoptions-=t
set nowrap
" autocmd required in order to set this after ftplugins load
autocmd BufWinEnter * set textwidth=0 wrapmargin=0

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" Newlines without insert mode
nmap <S-Enter> O<Esc>
nnoremap ✠ O<Esc>
nmap <CR> o<Esc>
