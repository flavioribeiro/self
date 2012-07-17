syntax on

let mapleader=','
set laststatus=2
set nocompatible
set encoding=utf-8

set fileformat=unix
set number
filetype on
filetype plugin on

set autoindent
set ruler
set title
set nostartofline
set nobackup
set noswapfile
set ignorecase
set smartcase
set backspace=indent,eol,start

autocmd CursorMoved * checktime

set hlsearch
set incsearch
set visualbell
set wildmode=list:longest
set history=1000

" scrolling in vim autocomplete using jk
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

let g:Powerline_symbols = 'fancy'
set t_Co=256

autocmd BufWritePre * :%s/\s\+$//e

set runtimepath^=~/.vim/bundle/ctrlp.vim
map <c-f> :CtrlP<CR>
map <c-b> :CtrlPBuffer<cr>
map <c-m> :CtrlPMRU<cr>
map <c-g> :tabnew<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
let g:ctrlp_custom_ignore = '\.git$\|\.pyc$\|\.svn$'

autocmd BufNewFile,BufRead *.as set filetype=actionscript
autocmd BufNewFile,BufRead *.go set filetype=go

colorscheme default
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1

hi Visual ctermfg=black ctermbg=white
hi TabLineSel ctermfg=black ctermbg=LightGray
hi TabLineFill ctermfg=DarkGray
hi TabLine ctermfg=LightGray ctermbg=DarkGray
hi IndentGuidesEven ctermbg=234
hi IndentGuidesOdd ctermbg=233
hi Pmenu ctermfg=white ctermbg=8 guibg=grey30

" identacoes

autocmd Filetype actionscript set ts=2 shiftwidth=2 expandtab
autocmd Filetype python set ts=4 shiftwidth=4 expandtab
autocmd Filetype ruby set ts=2 shiftwidth=2 expandtab
autocmd Filetype go set ts=2 shiftwidth=2 expandtab

