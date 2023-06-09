" 基本配置
" -------
" 不与 Vi 兼容（采用 Vim 自己的操作命令）。
set nocompatible
" 打开语法高亮。自动识别代码，使用多种颜色显示。
" syntax on
" 在底部显示，当前处于命令模式还是插入模式。
" set showmode
" 命令模式下，在底部显示，当前键入的指令。
" 比如，键入的指令是2y3d，那么底部就会显示2y3，当键入d的时候，操作完成，显示消失。
" set showcmd
" 支持使用鼠标。
set mouse=a
" 使用 utf-8 编码。
set encoding=utf-8
" 启用256色。
set t_Co=256

" 外观
" ---
" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
set relativenumber
" 光标所在的当前行高亮。
set cursorline
" 垂直滚动时，光标距离顶部/底部的位置（单位：行）。
" set scrolloff=5
" 水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用。
" set sidescrolloff=15
" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
" set laststatus=2
" 在状态栏显示光标的当前位置（位于哪一行哪一列）。
" set ruler

" 搜索
" ---
" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set showmatch
" 搜索时，高亮显示匹配结果。
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set incsearch

" 编辑
" ----
" 出错时，不要发出响声。
set noerrorbells
" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
" set wildmenu
" set wildmode=longest:list,full

" vim-plug
" --------
call plug#begin()
" 状态栏
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1 " 启用扩展
let g:airline_statusline_ontop=1 " 顶部的状态行
let g:airline_powerline_fonts = 1 " 与电力线字体集成
" 状态栏主题
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='violet' " 设置主题
" 文件系统浏览器
Plug 'preservim/nerdtree'
" 修改树的显示图标
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeAutoCenter=1
" 显示行号
let NERDTreeShowLineNumbers=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=25
" 窗口位置
let g:NERDTreeWinPos='left'
" 文件类型字形（图标）
Plug 'ryanoasis/vim-devicons'
" 文件系统浏览器语法高亮
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" 使用完全匹配突出显示文件夹
let g:NERDTreeHighlightFolders = 1 " 使用完全匹配的方式启用文件夹图标高亮显示
let g:NERDTreeHighlightFoldersFullName = 1 " 突出显示文件夹名称
" Vim 语言包的集合
Plug 'sheerun/vim-polyglot'
" 启动屏幕
Plug 'mhinz/vim-startify'
" 缩进指南
Plug 'nathanaelkane/vim-indent-guides'
" 默认启用缩进参考线
let g:indent_guides_enable_on_vim_startup = 1
" 编辑时预览源代码中的颜色
Plug 'ap/vim-css-color'
" 中文文档
Plug 'yianwillis/vimcdoc'
" 彩虹括号
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 " 启用
call plug#end()