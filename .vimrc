set nocompatible
filetype off

" Vundle configure
if (has("win32") || has("win64"))
	source $VIMRUNTIME/mswin.vim
	let $HOME=$USERPROFILE
endif
let $VIMFILES=$HOME.'/.vim'
set rtp+=$VIMFILES/bundle/vundle/
call vundle#rc()

" Bundle 
Bundle 'gmarik/vundle'
Bundle 'L9'

" Html
Bundle 'mattn/emmet-vim'

" Git
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'


"auto pairs
Bundle 'jiangmiao/auto-pairs'

" Shougo Plugin
Bundle 'neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'

" Commentary
Bundle 'tomtom/tcomment_vim'

" Auto indent
Bundle 'godlygeek/tabular'

" Run  comque
Bundle 'rosenfeld/conque-term'

" Tag list
Bundle 'taglist.vim'

" Mac App
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" NERDTree
Bundle 'The-NERD-tree'

" Ctrlp
Bundle 'kien/ctrlp.vim'

" History
Bundle 'mru.vim'

" syntax
Bundle 'groenewege/vim-less'
Bundle 'plasticboy/vim-markdown'
Bundle 'vim-scripts/phpvim'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'markwu/vim-laravel4-snippets'
Bundle 'xsbeats/vim-blade'

" colorscheme
Bundle 'bling/vim-airline'



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

" sudo vim
Bundle "sudo.vim"

" easymotion
Bundle 'Lokaltog/vim-easymotion'

" surround
Bundle 'tpope/vim-surround'

" php-cs-fixer command 
Bundle 'stephpy/vim-php-cs-fixer'

" matchit
Bundle 'matchit.zip'
Bundle 'MatchTag'
Bundle 'Mark'


" Ack
Bundle 'mileszs/ack.vim'

" vim-multiple-cursors
Bundle 'terryma/vim-multiple-cursors'


Bundle 'terryma/vim-expand-region'

" Vim setting
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
set ruler
set showcmd
set cursorline
set sidescrolloff=20
set nowrap
set paste

set noerrorbells

" ime
set iminsert=0
set imsearch=0

" search
set magic
set incsearch
set ignorecase
set nohlsearch
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*
set wildignore+=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp
set noerrorbells
set matchpairs+=<:>

" Faster split resizing (+,-)
if bufwinnr(1)
	map + <C-W>+
	map - <C-W>-
endif

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
noremap <leader>rc :e $MYVIMRC<CR>
noremap <leader>rrc :source $MYVIMRC<CR>
noremap <leader>sh :ConqueTermSplit bash<CR>
noremap <leader>ct :!ctags -R --languages=PHP .<CR>
noremap <leader>cs :noh<CR>
noremap <leader>ss :%s/\s\+$//e<CR>
noremap <leader>W :w !sudo tee %<CR>
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>
noremap <C-Q> <C-V>

map tf :set filetype=

" visual
vnoremap < <gv
vnoremap > >gv

set t_Co=256
set linespace=4
set background=dark
colorscheme solarized
if has('gui_running')
	set clipboard=
	set guioptions-=T
	set guioptions-=c
	set guioptions-=m
	set guifont=Monaco\ for\ Powerline:h14,Monaco:h14
endif

" autocmd
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,php setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" taglist
set tags=$HOME/.tags
set tags+=$PWD/tags
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
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

" Plugin configure
" NERDTree
let NERDTreeShowHidden=0
let g:NERDTreeChristmasTree=1
let g:NERDTreeCaseSensitiveSort=1
let g:NERDTreeWinPos='left'
let g:NERDTreeWinSize=40
let g:NERDTreeChDirMode=2

" compiler
autocmd FileType c nmap <leader><leade,>r :!cc -o "%:p:r" "%:p" && "%:p:r"<CR>

" Auto Indent
let g:tabular_loaded = 1

" comque
let g:ConqueTerm_PyVersion = 2

" ZenCoding
let g:ConqueTerm_Color = 1
let g:user_zen_settings={'php' : {'extends' : 'html'}, 'lang' : 'zh', 'charset' : 'utf-8'}
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

" Shougo Plugin
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3

" easyMotion
let g:EasyMotion_leader_key = ',,'

" vim-php-cs-fixer 
let g:php_cs_fixer_level = "psr2"                  " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_fixers_list = ""               " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

" airline
let g:airline_theme = 'solarized'
call airline#init#bootstrap()
call airline#init#sections()
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
