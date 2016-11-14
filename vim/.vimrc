" set our tabs to X spaces
set ts=2
set shiftwidth=2

" turn syntax highlighting on by default
syntax on

" set auto-indenting on for programming
set ai

" turn off compatibility with the old vi
set nocompatible

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" do not highlight words when searching for them. it's distracting.
set nohlsearch

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start

" use spaces instead of tabs
set expandtab

" Quick-Start for spell
:setlocal spell spelllang=en_ca

" Soft word wrap
set linebreak

" Use the Twilight color scheme (http://www.vim.org/scripts/script.php?script_id=1677)
:color twilight

