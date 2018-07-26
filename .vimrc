set nocompatible "关闭与vi的兼容模式
set number "显示行号
set nowrap    "不自动折行
set showmatch    "显示匹配的括号
set scrolloff=3        "距离顶部和底部3行"
set encoding=utf-8  "编码
set fenc=utf-8      "编码
set hlsearch        "搜索高亮
syntax on    "语法高亮
set colorcolumn=81
set cursorline
set tabstop=4   "tab宽度
set softtabstop=4
set shiftwidth=4
set textwidth=81  "行最大宽度
set autoindent      "自动缩进


:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>

map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
" 选中状态下 Ctrl+c 复制


"""""""""""""""" Vundle 插件 """""""""""""""""""""""""""""""""""""""
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'VundleVim/Vundle.vim'


call vundle#end()            " 必须
filetype plugin indent on    " 必须
" "filetype plugin on
" "
" " 常用的命令
" " :PluginList       - 列出所有已配置的插件
" " :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" " :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
" "
" " 查阅 :h vundle 获取更多细节和wiki以及FAQ
" " 将你自己对非插件片段放在这行之
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""" Setting on NERDTree """""""""""""""""""""""""""""""
map <f10> :NERDTreeToggle<cr>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""窗口位置
let g:NERDTreeWinPos='left'
""窗口尺寸
let g:NERDTreeSize=30
let g:NERDTreeHidden=0
autocmd vimenter * NERDTree</cr></f10>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
