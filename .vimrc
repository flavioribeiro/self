set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'rodjek/vim-puppet'
Plugin 'msanders/snipmate.vim'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'hhvm/vim-hack'
Plugin 'techlivezheng/vim-plugin-tagbar-phpctags'
Plugin 'groenewege/vim-less'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'juvenn/mustache.vim'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'mattn/emmet-vim'
Plugin 'elzr/vim-json'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'endel/actionscript.vim'

Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
Plugin 'jnurmine/Zenburn'
Plugin 'chriskempson/base16-vim'

call vundle#end()            " required
filetype plugin indent on    " required

set autoread
" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
set cursorline
set whichwrap +=<,>,h,l

set hlsearch "Highlight search things
set nolazyredraw "Don't redraw while executing macros

syntax enable "Enable syntax hl
set shell=/bin/bash

set number
try
	lang en_US
catch
endtry

let g:solarized_termcolors=256
set t_Co=256
set background=dark
let base16colorspace=256        " Access colors present in 256 colorspace

set nobackup
set nowb
set noswapfile
"set undodir=~/.vim/undodir
"set undofile
set tabstop=2
set shiftwidth=2
set expandtab
autocmd FileType php set noexpandtab shiftwidth=4 tabstop=4
set si
set wrap
set mouse=a
set scrolloff=5
set laststatus=2
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript']
let g:ycm_global_ycm_extra_conf = '~/.dotfiles/.ycm_extra_conf.py'
let g:ctrlp_custom_ignore = {'dir':  '\v[\/](doc|tmp|node_modules)', 'file': '\v\.(exe|so|dll)$'}

set ignorecase		" searches are case insensitive...
set smartcase		" ... unless they contain at least one capital letter

" airline settings
let g:airline_powerline_fonts = 1

match ErrorMsg '\s\+$'
" Removes trailing spaces
function! TrimWhiteSpace()
	%s/\s\+$//e
endfunction
nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
augroup filetype
	au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup end

set listchars=tab:»·,eol:↵,trail:⋅,extends:❯,precedes:❮
nmap <F6> :call TrimWhiteSpace()<CR>

"Tagbar config
nmap <F8> :TagbarToggle<CR>

" golang ctags configuration
" https://github.com/jstemmer/gotags
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'	  : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

"let g:ctrlp_match_func = {'match' : 'matcher#cmatch'}
let g:EclimCompletionMethod = 'omnifunc'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

autocmd BufNewFile,BufRead *.as set filetype=actionscript
autocmd BufNewFile,BufRead *.asc set filetype=actionscript
autocmd BufNewFile,BufRead *.go set filetype=go
autocmd BufNewFile,BufRead *.pp set filetype=puppet
autocmd BufNewFile,BufRead *.conf set filetype=conf
autocmd BufNewFile,BufRead *.erb set filetype=ruby

"Indentation
autocmd Filetype actionscript set ts=2 shiftwidth=2 expandtab
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

nmap <silent> <C-n> :NERDTreeToggle<CR>
nmap <silent> <C-f> :CtrlP .<CR>
nmap <silent> <C-g> :tabnew<CR>
set noerrorbells
