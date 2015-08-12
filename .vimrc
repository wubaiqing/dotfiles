" 不兼容VI模式
set nocompatible

" 关闭文件类型检测
filetype off

" 插件
set rtp+=~/.vim/bundle/Vundle.vim

" 下载插件
call vundle#begin()

  " Vundle管理
  Plugin 'VundleVim/Vundle.vim'

  " 导航
  Plugin 'scrooloose/nerdtree'

  " 配色
  Plugin 'tomasr/molokai'

  " 文件索引
  Plugin 'ctrlpvim/ctrlp.vim'

  " Git命令
  Plugin 'tpope/vim-fugitive'

  " Git左侧栏提示
  Plugin 'airblade/vim-gitgutter'

  " 自动补全 - 有配置项
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





call vundle#end()

" 打开文件类型检测 
filetype plugin indent on









syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set cindent
set expandtab

" 配色
colorscheme molokai 

" 按键映射 - ,
let mapleader = ','

" NERDTree - ,.
noremap <leader>. :NERDTreeToggle<CR>
noremap <leader>t :TlistToggle<CR>
noremap <leader>h :Unite file_mru<CR>
noremap <leader>rc :e $MYVIMRC<CR>
noremap <leader>rrc :source $MYVIMRC<CR>



" Begin - 自动补全
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions'
  \ }

if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'


inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction


inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" End - 自动补全
