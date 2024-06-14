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
Plug 'tpope/vim-abolish'
Plug 'vim-scripts/matchit.zip'
Plug 'tomtom/tcomment_vim'
call plug#end()

syntax on
"set smartindent
colorscheme onedark

" 2 space tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
filetype plugin indent on

" Hybrid line numbers
set nu rnu

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

" Clear search highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Newlines without insert mode
nmap <S-Enter> O<Esc>
nnoremap ✠ O<Esc>
nmap <CR> o<Esc>

" Repeat last macro with comma, as influenced by https://vi.stackexchange.com/a/14235/19754
" Except, I am only mapping the key for normal mode.
" NOTE: Commenting out for now because I prefer using comma for reverse character search
" nnoremap , @@

" Use leader-s (\s) to search-replace current word in doc
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
