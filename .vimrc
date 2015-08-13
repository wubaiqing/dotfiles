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

  " 左侧导航栏
  Plugin 'scrooloose/nerdtree'

  " 配色
  Plugin 'tomasr/molokai'

  " 文件索引
  Plugin 'ctrlpvim/ctrlp.vim'

  " Git命令
  Plugin 'tpope/vim-fugitive'

  " Git文件状态
  Plugin 'airblade/vim-gitgutter'


  " 自动补全 +
  Plugin 'Shougo/neocomplcache.vim'

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

let NERDTreeShowHidden=1



" Begin - 自动补全
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

let g:neocomplcache_temporary_dir = "$HOME/.vim/tmp/neocomplcache"

let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions'
  \ }

if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><BS>  neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" End - 自动补全

" Begin - 自动补全
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'
" End - 自动补全


" Begin - 状态栏
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" End - 状态栏

" Begin - 代码补全
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" End - 代码补全

" molokai
let g:molokai_original = 1
let g:rehash256 = 1


" Powerline configration
let g:Powerline_symbols = 'fancy'
set laststatus=2
let g:Powerline_dividers_override = ['','','','|']
