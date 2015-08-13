" 不兼容VI模式
set nocompatible

" 关闭文件类型检测
filetype off

" NeoBundle路径
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Begin - 下载插件
call neobundle#begin(expand('~/.vim/bundle/'))

  " NeoBundle 插件管理
  " https://github.com/Shougo/neobundle.vim
  NeoBundleFetch 'Shougo/neobundle.vim'

  " Unite文件搜索接口
  " https://github.com/Shougo/unite.vim
  NeoBundle 'Shougo/unite.vim'

  " Unit异步安装更新工具
  " https://github.com/Shougo/vimproc.vim
  NeoBundle 'Shougo/vimproc.vim', {
  \ 'build' : {
  \     'windows' : 'tools\\update-dll-mingw',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'linux' : 'make',
  \     'unix' : 'gmake',
  \    },
  \ }

  " Unite文件缓冲区
  " https://github.com/Shougo/neomru
  NeoBundle 'Shougo/neomru.vim'
  
  " Unite文件函数列表
  " https://github.com/Shougo/unite-outline
  NeoBundle 'Shougo/unite-outline'

  " Molokai主题
  " https://github.com/tomasr/molokai
  NeoBundle 'tomasr/molokai'

  " 左侧导航栏 --- 快捷键（,.）
  " https://github.com/scrooloose/nerdtree
  NeoBundle 'scrooloose/nerdtree'

  " Git命令
  " https://github.com/tpope/vim-fugitive
  NeoBundle 'tpope/vim-fugitive'

  " Git前台文件添加/修改状态
  " https://github.com/tpope/vim-gitgutter
  NeoBundle 'airblade/vim-gitgutter'

  " 自动补全 --- 配置文件
  NeoBundle 'Shougo/neocomplete.vim'

  " 括号补全
  NeoBundle 'jiangmiao/auto-pairs'

  " 当前文件搜索 --- 配置文件
  NeoBundle 'Lokaltog/vim-easymotion'

  " Ruby语法高亮
  NeoBundle 'vim-ruby/vim-ruby'

  " Rails文件跳转
  NeoBundle 'tpope/vim-rails'

  " HTML补全
  NeoBundle 'mattn/emmet-vim'

  " 代码补全 - 有配置项
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'honza/vim-snippets'

  " 文件注释
  NeoBundle 'tomtom/tcomment_vim'

  " 状态栏
  NeoBundle 'bling/vim-airline'

  " Tag
  NeoBundle 'majutsushi/tagbar'

  " 代码补全
  NeoBundle 'SirVer/ultisnips'


  " 替换字符
  NeoBundle 'tpope/vim-surround'

  " HTML Tag
  NeoBundle 'gregsexton/MatchTag'

  " HTML跳转
  NeoBundle 'vim-scripts/matchit.zip'

  " Sublime 
  NeoBundle 'terryma/vim-multiple-cursors'
  NeoBundle 'terryma/vim-expand-region'

  " syntax
  NeoBundle 'groenewege/vim-less'
  NeoBundle 'plasticboy/vim-markdown'
  NeoBundle 'vim-scripts/phpvim'
  NeoBundle 'othree/html5.vim'
  NeoBundle 'pangloss/vim-javascript'
  NeoBundle 'othree/javascript-libraries-syntax.vim'
  NeoBundle 'kchmck/vim-coffee-script'
  NeoBundle 'markwu/vim-laravel4-snippets'
  NeoBundle 'xsbeats/vim-blade'
  


call neobundle#end()
" End - 下载插件


" 语法高亮
syntax on


" 打开文件类型检测 
filetype plugin indent on

" 不自动换行
set nowrap

" Tab键为2个空格
set tabstop=2

set backspace=indent,eol,start
set ttyfast
set lazyredraw
set splitbelow
set splitright
set title
set hidden
set completeopt=longest,menuone,preview
set nostartofline

set nocursorline
set nocursorcolumn
set scrolljump=5

set nofoldenable
set autochdir
set autoread


set autoindent
set copyindent
set shiftwidth=2
set shiftround

set ignorecase
set smartcase
set smarttab

set hlsearch 
set incsearch
set textwidth=79

set number
set numberwidth=2
set showcmd


set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn
set wildignore+=_build
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
set wildignore+=*.pyc
set wildignore+=*.spl
set wildignore+=*.sw
set wildignore+=*.DS_Store
set wildignore+=*.rdb
set wildignore+=*CACHE

set cursorline
set nojoinspaces
set nobomb
set noerrorbells

set iminsert=0
set imsearch=0

set nobackup
set noswapfile

set expandtab


set enc=utf-8
set termencoding=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,gb2312
set langmenu=zh_CN.utf-8
language message zh_CN.utf-8

" fileformat
set fileformat=unix
set fileformats=unix,mac

set t_Co=256

set laststatus=2
set scrolloff=2

au BufRead,BufNewFile Vagrantfile set ft=ruby

colorscheme molokai 
if has('gui_running')
    set guifont=Monaco\ for\ Powerline:h14,Monaco:h14
    set clipboard=
    set guioptions-=T
    set guioptions-=c
    set guioptions-=m
endif


map tf :set filetype=
map tp :set pastetoggle<CR>
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>


" Begin - 快捷键绑定
let mapleader = ','
noremap <leader>. :NERDTreeToggle<CR>
noremap <leader>t :TlistToggle<CR>
noremap <leader>rc :e $MYVIMRC<CR>
noremap <leader>rrc :source $MYVIMRC<CR>
noremap <leader>s :%s//g<left><left>
" End - 快捷键绑定


" Begin - 自动补全
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" End - 自动补全


" Begin - 配色
let g:molokai_original = 1
let g:rehash256 = 1
" End - 配色


" Begin - 文件查找
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
" End - 文件查找

