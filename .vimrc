set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'juvenn/mustache.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'jtratner/vim-flavored-markdown'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'mattn/emmet-vim'
Bundle 'elzr/vim-json'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/nerdtree.git'
Bundle 'jamestomasino/actionscript-vim-bundle'
Bundle 'vim-scripts/ctags.vim'
Bundle 'editorconfig/editorconfig-vim'

" color schemes
Bundle 'tomasr/molokai'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required
autocmd! bufwritepost .vimrc source ~/.vimrc


set autoread
syntax enable
set shell=/bin/bash
set number
set hlsearch
set nolazyredraw
let g:solarized_termcolors=256
set nobackup
set nowb
set noswapfile
set tabstop=2
set shiftwidth=2
set whichwrap +=<,>,h,l

map <c-g> :tabnew<cr>
map <c-j> :tabnext<cr>
map <c-k> :tabprev<cr>

" airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ctrlp settings
let g:ctrlp_map = '<c-f>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*.swf
let g:vim_json_syntax_conceal = 0

" nerdtree
let g:nerdtree_tabs_focus_on_files=1

" Removes trailing spaces
function! TrimWhiteSpace()
		%s/\s\+$//e
endfunction
nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
nnoremap <c-n> :NERDTreeToggle <cr>

let g:syntastic_python_checkers = ['pylint']

colorscheme jellybeans

autocmd Filetype actionscript set ts=8 shiftwidth=2 expandtab
autocmd Filetype javascript set ts=2 shiftwidth=2 expandtab
autocmd Filetype python set ts=4 shiftwidth=4 expandtab
autocmd Filetype ruby set ts=2 shiftwidth=2 expandtab
autocmd Filetype puppet set ts=2 shiftwidth=2 expandtab
autocmd Filetype go set ts=2 shiftwidth=2 expandtab
autocmd Filetype perl set ts=2 shiftwidth=2 expandtab
autocmd Filetype html set ts=2 shiftwidth=2 expandtab
autocmd Filetype conf set ts=2 shiftwidth=2 expandtab
autocmd Filetype lua set ts=2 shiftwidth=2 expandtab
autocmd Filetype c set ts=4 shiftwidth=4 expandtab
autocmd Filetype cpp set ts=2 shiftwidth=2 expandtab
autocmd Filetype sh set ts=2 shiftwidth=2 expandtab
