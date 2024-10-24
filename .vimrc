"*********************************************************
"" ---------- <操作说明> ----------
"*********************************************************
"" ---------- 本文档所设定快捷键 ----------
"" <leader>                      # 前缀键设置为逗号(,)
"" <leader><space>               # 删除行尾空格
"" <leader>[n]                   # 跳转页面
"" <leader>cc                    # 注释该行
"" <leader>ct                    # 取消注释
"" <leader>sh                    # 水平分割窗口
"" <leader>sv                    # 竖直分割窗口
"" <leader>nh                    # 临时关闭高亮显示
"" ff                            # 对括号内折叠
"" <space>                       # 打开/关闭折叠
"" <F1>                          # 自动调整全文缩进
"" <F2>                          # 总览源码
"" <F4>                          # 查看目录结构
""       o                       # 替换当前窗口文件
""       t                       # 在新标签页中打开文件
""       i                       # 上下分割当前窗口并打开文件
""       u                       # 到上一级目录
"" <F5>                          # 按照指定模式在指定文件中搜索
"" <F6>                          # 按照指定模式在指定目录中迭代寻找
"" <F7>                          # 关闭语法错误提示窗口

"" ---------- vim 官方默认操作 ----------
"" d[n]w                         # 删除n(默认1)个单词
"" d$                            # 删除直至本行结束
"" [n]w/b                        # 光标向后\前移动n(默认1)单词
"" :^/$                          # 光标移动到首行\末行
"" u                             # 撤回
"" <ctrl>r                       # 撤回"撤回"
"" y[n]w                         # 复制当前光标后的n(默认1)单词
"" [n]yy                         # 复制n行(默认1)
"" p                             # 粘贴
"" <ctrl>g                       # 显示当前文件位置及状态
"" G                             # 将光标移动到文件底部
"" gg                            # 将光标移动到文件顶部
"" /(?)[phrase] (\C)             # 查找本文档中的[phrase](严格区分大小写)
"" n\N                           # 查找下一个(上一个)
"" <ctrl>+o(i)                   # 配合 /, ? 使用, 跳转到前(后)一次光标位置
"" %                             # 光标必须先放在(,),[,],{,}上, 寻找对应括号
"" :s/old/new(/g)                # 将本行的第一个(所有)old替换为new
"" :%s/old/new(/g)               # 将本文件的第一个(所有)old替换为new
"" :%s/old/new/gc                # 将所有old替换为new, 每一次替换都需要确认
"" :[m],[n]s/old/new(/g)         # 将[m]-[n]行的第一个(所有)old替换为new
"" :![command]                   # 执行外部(shell)命令[command]
"" :[n]([n]G)                    # 跳转到第[n]行
"" <ctrl>ww                      # 不同 window 间相互切换
"" <ctrl>]                       # 跳转到变量定义处
"" g]                            # 显示变量的所有tag列表
"" <ctrl>t                       # 返回到搜索前
"" gd                            # 跳转到局部变量的定义处
"" m[a-z,A-Z]                    # 设置书签
"" `[a-z,A-Z]                    # 跳转到书签
"" ``                            # 跳转到上次跳转的地方
"" :delm [a-z,A-Z]               # 删除书签
"" :delm!                        # 删除所有书签
"" :marks                        # 显示所有书签
"" :terminal                     # 上下分割当前窗口并打开终端
"" :shell                        # 全屏打开终端
"" :make                         # 使用当前目录下的 Makefile 编译
"" :cw                           # 编译后显示编译错误
"" :g/<string>/d                 # 删除所有带<string>的行
"" [[                            # 跳转到上一个函数
"" ]]                            # 跳转到下一个函数

"" ---------- 所用插件默认操作 ----------
"" :A                            # 展示对应的 c/h 文件
"" :AS                           # 水平划分 window 并展示对应的 c/h 文件
"" :AV                           # 垂直划分 window 并展示对应的 c/h 文件
"" :AT                           # 在新的 tab 中展示对应的 c/h 文件
"" :IH                           # 展示光标所指的文件
"" :IHS                          # 水平划分 window 并展示光标所指的文件
"" :IHV                          # 垂直划分 window 并展示光标所指的文件
"" :IHT                          # 在新的 tab 中展示光标所指的文件

"" <leader>hp                    # 显示 git 改动区块
"" <leader>hs                    # 缓存 git 改动区块
"" <leader>hu                    # 撤回 git 改动区块
"" [c                            # 跳转到上一个 git 改动区块
"" ]c                            # 跳转到下一个 git 改动区块
"" <leader>md                    # 开启\关闭 Markdown 预览

"*********************************************************
"" mapping 简介*
"*********************************************************
" 快捷键映射(mapping), 可以为常用的操作指定快捷键, 能够大幅度提高使用 vim 效率
" mapping 结构如下
"
"     map-commands   (optional)map-arguments   {lhs}   {rhs}
"
" 例如: nnoremap <silent> <F1> gg=G 表示将 gg=G 映射为 <F1>
"     1. 在 normal 模式下输入 <F1> 等同于输入 gg=G
"     2. n(仅限 normal 模式)nore(no recursive)map
"     3. 统一建议使用 nnoremap, 除非必须使用递归映射
"     4. <silent> 表示 {rhs} 是否显示在命令行中
"
" 查看已有映射
" :(n)map 显示所有(普通)模式下的映射, :map <leader> 显示所有以 <leader> 开头的映射

"*********************************************************
"" 安装说明*
"*********************************************************
"" 1. 安装 vim-plug 插件管理器
""    https://github.com/junegunn/vim-plug
"" 2. 拷贝本文件 vimrc 至用户目录
""    cp vimrc ~/.vimrc
"" 3. 下载插件
""    进入 vim 后, 输入 :PlugInstall 从 github 上下载插件并自动安装

"*********************************************************
"" vim-plug 配置*
"*********************************************************
call plug#begin()
"中文帮助文档
Plug 'yianwillis/vimcdoc'
"状态栏显示 git 分支
Plug 'tpope/vim-fugitive'
"vim 中查看 git diff
Plug 'airblade/vim-gitgutter'
"自动补全
Plug 'ervandew/supertab'
"源码总览
Plug 'preservim/tagbar'
"ctags 管理
Plug 'ludovicchabant/vim-gutentags'
"显示目录结构
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
"高级搜索
Plug 'vim-scripts/grep.vim'
"高亮行尾空格
Plug 'bronson/vim-trailing-whitespace'
"语法检测
Plug 'vim-syntastic/syntastic'
"Markdown预览
Plug 'iamcco/markdown-preview.nvim'
"Markdown语法检测
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
"文件切换基本功能
Plug 'vim-scripts/a.vim'
"显示 tabline 序号
Plug 'mkitt/tabline.vim'
"状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"主题
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
Plug 'sickill/vim-monokai'
Plug 'cocopon/iceberg.vim'
Plug 'folke/tokyonight.nvim'
call plug#end()

"*********************************************************
"" 一般配置*
"*********************************************************
"关闭兼容vi模式
set nocompatible
"设置前缀键(leader)为","
let mapleader=","

""========== 显示 ========== *
"开启语法高亮功能
syntax enable
syntax on
"指定配色方案为256色
set t_Co=256
"设置编码方式
set encoding=utf-8
"设置背景颜色
set background=dark
"设置颜色主题
"colorscheme molokai
"colorscheme gruvbox
"colorscheme nord
"colorscheme dracula
"colorscheme monokai
colorscheme iceberg
"colorscheme tokyonight
"colorscheme tokyonight-night
"colorscheme tokyonight-storm
"colorscheme tokyonight-day
"colorscheme tokyonight-moon
"显示行号
set number
"高亮当前行
set cursorline
"高亮光标处匹配的括号
set showmatch

""========== 对齐 ========== *
"将tab键自动转换为空格
set expandtab
"设置tab为3个空格
set tabstop=3
"设置自动对齐空格数
set shiftwidth=3
"设置退格键可以删除3个空格
set smarttab
set softtabstop=3
"自动控制缩进
set autoindent
"设置C/C++文件自动对齐
set cindent
"针对不同的文件采取不同的缩进方式
filetype indent on
"启动智能补全
filetype plugin indent on
"设置自动换行
set wrap

""========== 底栏 ========== *
"一直显示状态栏
set laststatus=2
"最后一行显示正在输入的命令
set showcmd
"最后一行不需要显示模式
set noshowmode
"命令模式下补全以菜单形式显示
set wildmenu

""========== 搜索 ========== *
"设置搜索时忽略大小写(如果模式的任何位置出现了 "\C", 临时区分大小写)
set ignorecase
"对最后一次搜索项, 进行高亮显示
set hlsearch
"临时关闭高亮显示
nnoremap <leader>nh :nohlsearch<CR>

""========== 历史 ========== *
"历史命令记录条数
set history=1000
"设置viminfo至多保存1000个文件信息, 每个文件至多保留1000行
set viminfo='1000,<1000

""========== 其他 ========== *
"检测文件类型
filetype on
"允许插件
filetype plugin on
"未保存退出需要确认
set confirm
"取消备份, 以禁止生成临时文件
set nobackup
set noswapfile
"配置 backspace 键的工作方式
set backspace=indent,eol,start
"打开上次打开文件的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"增加一倍 help 页面显示范围
set helpheight=40
"等待时间(ms), 如<leader>键后的输入
set timeoutlen=2000
"当切割窗口显示多文件时, 自动调整窗口大小
au VimResized * exe "normal! \<c-w>="
"不自动添加注释
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "no rm $"|endif|endif
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"启用折叠
set foldenable
"设置折叠模式
"标记折叠(会改写文件)
"set foldmethod=marker
"缩进折叠(根据缩进自动折叠)
"set foldmethod=indent
"语法折叠(根据语法自动折叠)
"set foldmethod=syntax
"手工折叠
set foldmethod=manual
"对括号内进行折叠
nnoremap ff zfa{
"打开/关闭折叠
nnoremap <space> za
"屏幕左侧显示一个折叠标识列
set foldcolumn=1
"跳转 tag
nn <leader>1 1gt
nn <leader>2 2gt
nn <leader>3 3gt
nn <leader>4 4gt
nn <leader>5 5gt
nn <leader>6 6gt
nn <leader>7 7gt
nn <leader>8 8gt
nn <leader>9 9gt
nn <leader>0 10gt
"水平分割 window
nnoremap <leader>sh :split<CR>
"竖直分割 window
nnoremap <leader>sv :vsplit<CR>
"自动调整全文缩进(调整 <n> 行缩进: <n>==)
nnoremap <F1> gg=G

"*********************************************************
"" 不建议项*
"*********************************************************
"启用对鼠标的支持
"set mouse=a
"每行最长列数
"set textwidth=120
"粘贴模式
"set paste

"*********************************************************
"" gitgutter 配置*
"*********************************************************
"设定 gitgutter 刷新时间为 100 ms
set updatetime=100
"更改区块显示无上限
let g:gitgutter_max_signs=-1
"开启左侧 git diff 显示
let g:gitgutter_signs=1
"关闭 git diff 高亮显示
let g:gitgutter_highlight_lines=0
"改动区块来回跳动
nnoremap ]c <Plug>(GitGutterNextHunk)
nnoremap [c <Plug>(GitGutterPrevHunk)

"*********************************************************
"" airline 配置*
"*********************************************************
"设置状态栏主题
"let g:airline_theme='deus'
let g:airline_theme='angr'
"解决右下角 additional sections 混乱的问题
let g:airline_symbols_ascii = 1

"*********************************************************
"" gutentags 配置*
"*********************************************************
"gutentags 搜索工程目录的标志, 碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project', 'src']
"所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
"将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中, 避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
"检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

"*********************************************************
"" tagbar 配置*
"*********************************************************
"设置tagbar使用的ctags的插件
let g:tagbar_ctags_bin='/usr/bin/ctags'
"窗口在右侧显示
let g:tagbar_left=0
"设置宽度
let g:tagbar_width=60
"打开关闭 tagbar
nnoremap <F2> :TagbarToggle<CR>

"*********************************************************
"" nerdtree 配置*
"*********************************************************
"显示增强
let NERDChristmasTree=1
"自动调整焦点
let NERDTreeAutoCenter=1
"鼠标模式:目录单击,文件双击
let NERDTreeMouseMode=2
"打开文件后自动关闭
let NERDTreeQuitOnOpen=1
"显示文件
let NERDTreeShowFiles=1
"显示隐藏文件
let NERDTreeShowHidden=1
"高亮显示当前文件或目录
let NERDTreeHightCursorline=1
"显示行号
let NERDTreeShowLineNumbers=1
"窗口位置
let NERDTreeWinPos='left'
"窗口宽度
let NERDTreeWinSize=30
"不显示'Bookmarks' label 'Press ? for help'
let NERDTreeMinimalUI=1
"快捷键<F4>查看目录
nnoremap <silent> <F4> :NERDTreeToggle<CR>

"*****************************************************
" Syntastic 配置*
"*****************************************************
"状态栏显示警告消息
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"显示任何语法错误
let g:syntastic_always_populate_loc_list=1
"自动显示错误定位(location-list)
let g:syntastic_auto_loc_list=1
"打开文件时不检测语法
let g:syntastic_check_on_open=0
"关闭文件时不检测语法
let g:syntastic_check_on_wq=0
"关闭语法错误提示窗口
nnoremap <silent> <F7> :SyntasticToggleMode<CR>

"*********************************************************
"" grep 配置*
"*********************************************************
nnoremap <silent> <F5> :Grep<CR>
nnoremap <silent> <F6> :Rgrep<CR>

"*********************************************************
"" vim-trailing-whitespace 配置*
"*********************************************************
"删除行尾空格
nnoremap <leader><space> :FixWhitespace<CR>

"*********************************************************
"" markdown-preview 配置*
"*********************************************************
call mkdp#util#install()
" normal/insert
nnoremap <leader>md :MarkdownPreviewToggle<CR>

"*********************************************************
"" vim-markdown 配置*
"*********************************************************
let g:vim_markdown_folding_disabled = 1
