set nocompatible

" vundle configure
if (has("win32") || has("win64"))
    let $HOME=$USERPROFILE
endif
let $VIMFILES=$HOME.'/.vim'
set rtp+=$VIMFILES/bundle/vundle/
call vundle#rc()

" require
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'

" complete
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'ZenCoding.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'

" other
Bundle 'godlygeek/tabular'
Bundle 'rosenfeld/conque-term'
Bundle 'taglist.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/matchit.zip'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" file
Bundle 'The-NERD-tree'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'mru.vim'

" syntax
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown'
Bundle 'vim-scripts/phpvim'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/syntastic'

" colorscheme
Bundle 'jelera/vim-powerline'
Bundle 'jelera/vim-nazca-colorscheme'
Bundle 'jelera/vim-gummybears-colorscheme'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Railscasts-Theme-GUIand256color'
Bundle 'altercation/vim-colors-solarized'
Bundle 'peaksea'
Bundle 'Zenburn'
Bundle 'tango.vim'

" global
filetype on
filetype plugin indent on
syntax on
set number
set numberwidth=4
set title
set hidden
set nostartofline
set scrolljump=10
set foldenable
set backspace=indent,eol,start
set mouse=a
set showmatch
set autochdir
set autoread
set laststatus=2
"set relativenumber
set ruler
set showcmd
set cursorline
set sidescrolloff=20
"set pumheight=10

" ime
"set noimdisable
set iminsert=0
set imsearch=0

" search
set magic
set incsearch
set ignorecase
set nohlsearch
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp
set noerrorbells
set matchpairs+=<:>

" tab
set autoindent
set cindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" misc
set history=1000
set undolevels=1000
set nobackup
set noswapfile

" encoding
set enc=utf-8
set termencoding=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,gb2312
set langmenu=zh_CN.utf-8
language message zh_CN.utf-8

" fileformat
set fileformat=unix
set fileformats=unix,dos,mac

" font and theme
set t_Co=256
set linespace=4
set background=dark
colorscheme solarized

if has('gui_running')
    set guioptions-=T
    set guioptions-=c
    set guioptions-=m
    set guifont=Monaco\ for\ Powerline:h14,Monaco:h14
endif

if exists('+breakindent')
    set breakindent
endif

" maps
let mapleader = ','
noremap <leader>. :NERDTreeToggle<CR>
noremap <leader>t :TlistToggle<CR>
noremap <leader>h :MRU<CR>
noremap <leader>f :CommandT<CR>
noremap <leader>rc :e $MYVIMRC<CR>
noremap <leader>rrc :source $MYVIMRC<CR>
noremap <leader>sh :ConqueTermSplit bash<CR>
noremap <leader>ct :!ctags_php .<CR>
noremap <leader>cs :noh<CR>
noremap <leader>ss :%s/\s\+$//e<CR>
noremap <leader>W :w !sudo tee %<CR>
noremap <C-Q> <C-V>

" Plugin configure

" NERDTree
let NERDTreeShowHidden=0
let g:NERDTreeChristmasTree=1
let g:NERDTreeCaseSensitiveSort=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos='left'
let g:NERDTreeWinSize=40
let g:NERDTreeChDirMode=2

" Zencoding
let g:user_zen_settings={
\    'php' : {
\        'extends' : 'html'
\    },
\    'lang' : 'zh',
\    'charset' : 'utf-8'
\}

" powerline
let g:Powerline_symbols='fancy'

" autocomplete
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" taglist
set tags=$HOME/.tags
set tags+=$PWD/tags
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Update = 1

" neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" vim-javascript
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" load template
autocmd BufNewFile *.php  0r $VIMFILES/template/template.php
autocmd BufNewFile *.html  0r $VIMFILES/template/template.html

" compiler
autocmd FileType c nmap <leader><leader>r :!cc -o "%:p:r" "%:p" && "%:p:r"<CR>
