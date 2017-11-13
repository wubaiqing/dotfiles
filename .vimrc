" ==================================================
" Author wubaiqing <iUserCenter@gmail.com>
" https://github.com/wubaiqing/dotfiles/blob/master/.vimrc
" ==================================================



" ==================================================
" 插件管理
" ==================================================

" 关闭文件类型检测
set nocompatible
filetype off

" 开启 NVIM 专用选项
if has('nvim')
  " 允许真彩显示
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
  " 允许光标变化
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
endif

 
" Plugin路径
set rtp+=~/.vim/bundle/Vundle.vim

" 下载插件
call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

  " 左侧导航栏 --- 快捷键（,.） " https://github.com/scrooloose/nerdtree
  Plugin 'scrooloose/nerdtree'

  " 快速运行
  " https://github.com/thinca/vim-quickrun
  Plugin 'thinca/vim-quickrun'

  " Git前台文件添加/修改状态
  " https://github.com/tpope/vim-gitgutter
  Plugin 'airblade/vim-gitgutter'

  " 自动补全 --- 配置文件
  " https://github.com/Shougo/neocomplete
  Plugin 'Shougo/neocomplete.vim'

  " 括号补全
  " https://github.com/jiangmiao/auto-pairs
  Plugin 'jiangmiao/auto-pairs'

  " 当前文件搜索 --- 配置文件
  " https://github.com/Lokaltog/vim-easymotion
  Plugin 'Lokaltog/vim-easymotion'

  " HTML补全
  " https://github.com/mattn/emmet-vim
  Plugin 'mattn/emmet-vim'

  " Ruby语法高亮
  " https://github.com/vim-ruby/vim-ruby
  Plugin 'vim-ruby/vim-ruby'

  " Rails文件跳转
  " https://github.com/tpope/vim-rails
  Plugin 'tpope/vim-rails'

  " 代码片段 - 配置文件
  " https://github.com/honza/vim-snippets
  Plugin 'honza/vim-snippets'

  " 文件注释
  " https://github.com/tomtom/tcomment_vim
  Plugin 'tomtom/tcomment_vim'

  " 状态栏
  " https://github.com/bling/vim-airline
  Plugin 'bling/vim-airline'

  " Tag - 配置文件
  " https://github.com/majutsushi/tagbar
  Plugin 'majutsushi/tagbar'

  " 代码补全 - 配置文件
  " https://github.com/SirVer/ultisnips
  Plugin 'SirVer/ultisnips'

  " 替换字符
  " https://github.com/tpope/vim-surround
  Plugin 'tpope/vim-surround'

  " HTML Tag高亮
  " https://github.com/gregsexton/MatchTag
  Plugin 'gregsexton/MatchTag'

  " HTML跳转
  " https://github.com/vim-scripts/matchit.zip
  Plugin 'vim-scripts/matchit.zip'

  " Sublime 
  " https://github.com/terryma/vim-multiple-cursors
  Plugin 'terryma/vim-multiple-cursors'

  " 选择区块 - 有配置文件
  " https://github.com/terryma/vim-expand-region
  Plugin 'terryma/vim-expand-region'

  " Less高亮
  " https://github.com/groenewege/vim-less
  Plugin 'groenewege/vim-less'

  " Markdown高亮
  " https://github.com/plasticboy/vim-markdown
  Plugin 'plasticboy/vim-markdown'

  " syntax
  " https://github.com/vim-scripts/phpvim
  Plugin 'vim-scripts/phpvim'

  " HTML5高亮
  " https://github.com/othree/htlm5.vim
  Plugin 'othree/html5.vim'

  " Scss高亮
  " https://github.com/othree/htlm5.vim
  Plugin 'cakebaker/scss-syntax.vim'

  " Javascript高亮
  " https://github.com/pangloss/vim-javascript
  Plugin 'pangloss/vim-javascript'

  " Javascript扩展库高亮
  " https://github.com/othree/javascript-libraries-syntax.vim
  Plugin 'othree/javascript-libraries-syntax.vim'

  " 配色
  " https://draculatheme.com/vim/
  Plugin 'dracula/vim'

call vundle#end()



" ==================================================
" VIM文档
" http://vimdoc.sourceforge.net/htmldoc/options.html
" ==================================================

" 语法高亮
syntax on

" 打开文件类型检测 
filetype plugin indent on

" 换行模式
set fileformats=unix


" ==================================================
" 兼容模式
" ==================================================

" 不兼容VI模式
set nocompatible

" 不兼容VI模式的退格键
set backspace=indent,eol,start



" ==================================================
" 编码
" ==================================================

" 不设置bom标记
set nobomb

" 换行符编码 
set fileformat=unix

" 显示文件编码
set enc=utf-8

" 保存时当前文件编码
set fenc=utf-8

" 猜测文件编码
set fencs=utf-8,gbk,gb2312

" 终端显示的编码
set termencoding=utf-8

" 菜单编码
set langmenu=zh_CN.utf-8

" 提示信息乱码
language message zh_CN.utf-8



" ==================================================
" 行号
" ==================================================

" 显示行号
set number

" 行宽度
set numberwidth=2



" ==================================================
" TAB定义
" ==================================================

" 不自动换行
set nowrap

" TAB转换空格
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab shiftround

" 自动缩进时2个空格
set shiftwidth=2

" 按照shiftwidth调整宽度
set shiftround

" 自动缩进，每一行缩进时和上一行相等
set autoindent

" 复制现有缩进结构
set copyindent


" ==================================================
" 滚动
" ==================================================

" 光标离开当前显示的内容区域，滚动5行
set scrolljump=5



" ==================================================
" 开发
" ==================================================

" 代码不折叠
set nofoldenable

" 其他编辑器编辑文件时自动读取
set autoread

" 不用保存文件切换到缓冲区
set hidden



" ==================================================
" 搜索
" ==================================================

" 忽略大小写
set ignorecase

" 搜索包含大写字符就精确查找
set smartcase

" 搜索高亮
" set hlsearch 

" 输入查找内容时VIM就开始匹配
set incsearch



" ==================================================
" 状态栏
" ==================================================

" 输入的命令在状态栏下方展示
set showcmd



" ==================================================
" 自动补全
" ==================================================

" 开启补全
set wildmenu

" 补全模式
set wildmode=list:longest

" 补全忽略文件类型
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



" ==================================================
" 高亮
" ==================================================

" 光标当前行高亮模式
set cursorline



" ==================================================
" 合并
" ==================================================

" 使用J命令合并时，当前行后面会追加一个空格
set nojoinspaces



" ==================================================
" 提示音
" ==================================================

" 关闭错误提示音
set noerrorbells



" ==================================================
" 输入法
" ==================================================

" 默认不使用输入法
set iminsert=0

" 搜索时默认不使用输入法
set imsearch=0



" ==================================================
" 备份
" ==================================================

" 保存文件时不进行备份
set nobackup
set backupext=.bak

" 不使用swp文件 
set noswapfile



" ==================================================
" 配色
" ==================================================

" 使用256配色
set t_Co=256

" 样式Molokai
color dracula
" colorscheme dracula



" ==================================================
" GUI模式
" ==================================================

" Gvim设置字体
if has('gui_running')
    " 设置字体
    set guifont=Monaco\ for\ Powerline:h14,Monaco:h14

    " 复制粘贴
    set clipboard=
    
    " 隐藏工具栏
    set guioptions-=T

    " 隐藏字符提示框
    set guioptions-=c

    "隐藏菜单栏
    set guioptions-=m
endif


" ==================================================
" 快捷键 - 映射
" ==================================================

" TF - 设置文件编码
map tf :set filetype=

" 粘贴模式，不自动缩进
set pastetoggle=<F2>

" 右侧导航
nmap <F3> :TagbarToggle<CR>

" 延长选择框
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)


" ==================================================
" 快捷键 - 绑定
" ==================================================

" 绑定键 - ,
let mapleader = ','

" 左侧菜单
noremap <leader>. :NERDTreeToggle<CR>

" 读取VIM配置文件
noremap <leader>rc :e $MYVIMRC<CR>

" 应用当前配置文件
noremap <leader>rrc :source $MYVIMRC<CR>

" 替换字符
" noremap <leader>s :%s//g<left><left>


" ==================================================
" 插件 - snipmate - 代码片段
" ==================================================
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['c'] = 'c'
let g:snipMate.scope_aliases['vim'] = 'vim'
let g:snipMate.scope_aliases['ruby'] = 'ruby, rails'
let g:snipMate.scope_aliases['php'] = 'php, laravel, sym'
let g:snipMate.scope_aliases['html'] = 'coffee, css'
let g:snipMate.scope_aliases['python'] = 'python'
let g:snipMate.scope_aliases['markdown'] = 'markdown'



" ==================================================
" 插件 - Neocomplete - 自动补全
" ==================================================
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
autocmd FileType ruby compiler ruby

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

 

" ==================================================
" 插件 - EasyMotion - 当前文件搜索
" ==================================================
map <Leader>s <Plug>(easymotion-sn)


" ==================================================
" 插件 - Emmet - HTML补全
" ==================================================
let g:user_emmet_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \}


" ==================================================
" 插件 - javascript-libraries-syntax - JS高亮
" ==================================================
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1


" ==================================================
" 插件 - javascript-libraries-syntax - JS高亮
" ==================================================
let g:python_host_prog="/usr/local/bin/python"
