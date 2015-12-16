set nocompatible "取消vi兼容

filetype on "检测文件类型
filetype indent on "针对不同文件类型采用不同缩进格式
filetype plugin indent on "启用自动补全

set paste "粘贴时候保持格式

" --------------------------
" 默认显示行号，可用<F2>关闭/打开行号 
" --------------------------
set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

set showmatch "显示括号配对

"------------------------
" 搜索设置
"-----------------------
set hlsearch "高亮搜索文本
set incsearch "边输入边搜索（增量搜索）
set ignorecase "搜索忽略大小写
set smartcase "搜索字符串包含大写字母时仍大小写敏感

"-----------------
" tab键处理
"-----------------
set expandtab "tab转换为空格
set tabstop=4 "tab等于4个空格
set shiftwidth=4 "自动缩进空格宽度
set softtabstop=4 "按一次退格可以删掉4个空格

set so=7 "滚动时到本页第7行时就开始翻页（滚动页面）


set cursorline "高亮当前行
set showcmd "在状态栏显示当前输入的命令

"--------------
"开启语法高亮
"--------------
syntax enable
syntax on

"-----------------------------
"打开文件自动跳到上次编辑位置
"-----------------------------
autocmd BufReadPost *  
     \ if line("'\"") > 0 && line("'\"") <= line("$") |  
     \   exe "normal! g`\"" |  
     \ endif   


"---------------------
" 状态栏配置
"---------------------
set laststatus=2 "总是显示状态栏
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction
        set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ %{$USER}\ @\ %{hostname()}\


set wildmenu "输入命令用tab自动补全的时候用一个漂亮的单行菜单形式显示出来

set fo+=mB "打开断行模块对亚洲语言支持,更多设置项看文档

"---------------
" 使用utf8编码
"--------------
set encoding=utf-8  "设置utf8编码
set langmenu=zh_CN.UTF-8  "使用中文菜单

" 对backspace键的处理:
set backspace=indent,eol,start

"对按方向键或者h，l键不能到上、下一行的处理
set whichwrap=h,l,b,s,<,>,[,]
