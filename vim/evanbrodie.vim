" runtime custom_vim/awesome.vim

runtime custom_vim/plugins.vim

" set our tabs to X spaces
set ts=2
set shiftwidth=2
set softtabstop=2

" turn syntax highlighting on by default
syntax on

" turn off compatibility with the old vi
set nocompatible

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" Quick-Start for spell
:setlocal spell spelllang=en_ca

" Soft word wrap
set linebreak

" Show line numbers
set number

" Don't automatically wrap lines
set nowrap
set textwidth=0 wrapmargin=0

filetype off

set wildignore+=node_modules/**,public/**

" Disable automatic word wrapping
:set textwidth=0
:set wrapmargin=0

colorscheme neodark

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1

" Extra keybinding for escape
inoremap Ctrl+[ <Esc>

" Newlines without insert mode
nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>
" Below mapping is a workaround for iTerm, requires a custom keymapping
nnoremap ✠ O<Esc>

" Nerdtree customizations
map <F2> :NERDTreeToggle %<CR>
"Show hidden files in NerdTree
let NERDTreeShowHidden=1

" pick.vim mappings
nnoremap <Leader>p :call PickFile()<CR>
nnoremap <Leader>s :call PickFileSplit()<CR>
nnoremap <Leader>v :call PickFileVerticalSplit()<CR>
nnoremap <Leader>t :call PickFileTab()<CR>
nnoremap <Leader>b :call PickBuffer()<CR>
nnoremap <Leader>] :call PickTag()<CR>
