" 不兼容VI
set nocompatible

" 关闭文件类型检测
filetype off

" 使用Vundle工具
set rtp+=~/.vim/bundle/Vundle.vim

" Begin - 下载插件
call vundle#begin()

  " Vundle插件管理
  Plugin 'VundleVim/Vundle.vim'

  " 左侧导航栏 - 快捷键
  Plugin 'scrooloose/nerdtree'

  " 配色
  Plugin 'tomasr/molokai'

  " 文件索引
  Plugin 'ctrlpvim/ctrlp.vim'

  " Git命令
  Plugin 'tpope/vim-fugitive'

  " Git文件状态
  Plugin 'airblade/vim-gitgutter'

  " 自动补全 - 配置文件
  Plugin 'Shougo/neocomplete.vim'

  " 括号补全
  Plugin 'jiangmiao/auto-pairs'

  " 历史记录
  Plugin 'Shougo/unite.vim'
  Plugin 'Shougo/neomru.vim'
  Plugin 'Shougo/unite-outline'

  " Ruby语法高亮
  Plugin 'vim-ruby/vim-ruby'

  " Rails文件跳转
  Plugin 'tpope/vim-rails'

  " HTML
  Plugin 'mattn/emmet-vim'

  " AG搜索
  Plugin 'rking/ag.vim'
  
  " IF代码补全 - 有配置项
  Plugin 'Shougo/neosnippet-snippets'
  Plugin 'honza/vim-snippets'

  " 注释
  Plugin 'tomtom/tcomment_vim'

  " 状态栏
  Plugin 'bling/vim-airline'

  " Tag
  Plugin 'majutsushi/tagbar'

  " 代码补全
  Plugin 'SirVer/ultisnips'

  " 搜索
  Plugin 'Lokaltog/vim-easymotion'

  " 替换字符
  Plugin 'tpope/vim-surround'

  " HTML Tag
  Plugin 'gregsexton/MatchTag'

  " HTML跳转
  Plugin 'vim-scripts/matchit.zip'

  " Sublime 
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'terryma/vim-expand-region'

  " syntax
  Plugin 'groenewege/vim-less'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'vim-scripts/phpvim'
  Plugin 'othree/html5.vim'
  Plugin 'pangloss/vim-javascript'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'markwu/vim-laravel4-snippets'
  Plugin 'xsbeats/vim-blade'
  


call vundle#end()
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
set scrolljump=10
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
" set paste
set nobomb
set noerrorbells

set iminsert=0
set imsearch=0

set nobackup
set noswapfile

set expandtab

" set mouse=a

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
noremap <leader>h :Unite file_mru<CR>
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
