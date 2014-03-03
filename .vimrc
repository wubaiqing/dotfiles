"               ,
"              / \,,_  .'|
"           ,{{| /}}}}/_.'
"          }}}}` '{{'  '.
"        {{{{{    _   ;, \
"     ,}}}}}}    /o`\  ` ;)
"    {{{{{{   /           (
"    }}}}}}   |            \
"   {{{{{{{{   \            \          ,-------------------------------.
"   }}}}}}}}}   '.__      _  |        /       HI                        \
"   {{{{{{{{       /`._  (_\ /       /      /   \                        |
"    }}}}}}'      |    //___/   --= <   VVVI     HI-HI-HI                |
"    `{{{{`       |     '--'         \                   \               |
"     }}}`                            \                  HIM-HIM-HIM!!!  /
"                                      '--------------------------------'
set nocompatible
filetype off
let $VIMFILES=$HOME.'/.vim'
set rtp+=$VIMFILES/bundle/vundle/
call vundle#rc()

" Bundle
Bundle 'gmarik/vundle'
Bundle 'L9'

Bundle 'shawncplus/phpcomplete.vim'

" Html
Bundle 'mattn/emmet-vim'

" Git
Bundle 'airblade/vim-gitgutter'

"auto pairs
Bundle 'jiangmiao/auto-pairs'

" Shougo Plugin
Bundle 'neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'honza/vim-snippets'
Bundle "garbas/vim-snipmate"
Bundle "kien/rainbow_parentheses.vim"

Bundle 'Shougo/vimshell'

" Commentary
Bundle 'tomtom/tcomment_vim'

" Auto indent
Bundle 'junegunn/vim-easy-align'

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

" airline
Bundle 'bling/vim-airline'

" colorscheme
Bundle 'Railscasts-Theme-GUIand256color'
Bundle 'altercation/vim-colors-solarized'

" easymotion
Bundle 'Lokaltog/vim-easymotion'

" surround
Bundle 'tpope/vim-surround'

" php-cs-fixer command
Bundle 'stephpy/vim-php-cs-fixer'

" matchit
Bundle 'matchit.zip'
Bundle 'MatchTag'

" mark
Bundle 'Mark'

" ack
Bundle 'mileszs/ack.vim'

" vim-multiple-cursors
Bundle 'terryma/vim-multiple-cursors'


Bundle 'terryma/vim-expand-region'

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


" Vim setting
set nocompatible
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
set nobomb

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
set fileformats=unix,mac

" font and theme
set t_Co=256
set linespace=4
set background=light
colorscheme solarized
if has('gui_running')
    set guifont=Monaco\ for\ Powerline:h14,Monaco:h14
    set clipboard=
    set guioptions-=T
    set guioptions-=c
    set guioptions-=m
endif

" maps
map tf :set filetype=

" mapleader
let mapleader = ','
noremap <leader>. :NERDTreeToggle<CR>
noremap <leader>t :TlistToggle<CR>
noremap <leader>h :MRU<CR>
noremap <leader>rc :e $MYVIMRC<CR>
noremap <leader>rrc :source $MYVIMRC<CR>
noremap <leader>ct :!ctags -R --languages=PHP .<CR>
noremap <leader>cs :noh<CR>

" visual
vnoremap < <gv
vnoremap > >gv

" autocmd
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" CtrlP
let g:ctrlp_map='<C-P>'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command=['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" taglist
set tags=$HOME/.tags
set tags+=$PWD/tags
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Update = 1


" vim-javascript
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" NERDTree
let NERDTreeShowHidden=0
let g:NERDTreeChristmasTree=1
let g:NERDTreeCaseSensitiveSort=1
let g:NERDTreeWinPos='left'
let g:NERDTreeWinSize=40
let g:NERDTreeChDirMode=2

" Auto Indent
let g:tabular_loaded = 1

" easyMotion
let g:EasyMotion_leader_key = ',,'

" vim-php-cs-fixer
let g:php_cs_fixer_level = "psr2"                  " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

" airline
let g:airline_theme = 'tomorrow'
call airline#init#bootstrap()
call airline#init#sections()

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility=1
let g:neosnippet#snippets_directory=$VIMFILES.'/bundle/vim-snippets/snippets'
let g:snips_author=''

" vim-javascript
let g:html_indent_inctags="html,body,head,tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"

" vim-easy-align
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
