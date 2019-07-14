set nocompatible "关闭VI 兼容模式
set shell=/bin/bash
set autowrite "切换编辑的文件时，自动保存当前正在编辑的文件
set number      "显示行号
set ruler       "打开状态栏标尺
set shiftwidth=4 "设定>> 命令移动时的宽度
set softtabstop=4 "这将会让一个制表符只插入4个字符宽度的缩进
set tabstop=4   "设定TAB 长度为4
set expandtab  "将TAB扩展为4个空格
set nobackup    "覆盖文件时不备份
set showcmd    "将输入的命令显示出来，便于查看当前输入的信息
set ignorecase smartcase "搜索时忽略大小写
set mps+=<:> "设置高亮匹配的括号
set incsearch "增量搜索
set hlsearch "高亮搜索
set mouse=a "启用鼠标
set smartindent "智能缩进
set backspace=indent,eol,start "按backspace 时的
set cmdheight=1 "显示命令行的区域的高度
set scrolloff=3 "光标距顶部或底部为N行时，开始滚屏
set laststatus=2 "状态栏的高度
set completeopt+=menu
set completeopt+=longest
set completeopt+=preview  " 补全内容不以分割子窗口形式出现，只显示补全列表
set switchbuf+=usetab,newtab "通过quickfix窗口打开文件时,在新的TAB中打开
set t_ti= t_te= "退出VIM后，内容显示在终端屏幕，可以用于查看
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
colorscheme desert
hi Pmenu ctermbg=gray "设置补全菜单的背景色
hi PmenuSel ctermbg=blue
highlight LineNr ctermfg=2 "设置行号的颜色
filetype plugin on "自动检测文件类型
filetype plugin indent on "自动根据文件类型进行缩进
syntax enable "语法高亮

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 配置多语言环境
if has("multi_byte")
        " UTF-8 编码
        set encoding=utf-8
        set termencoding=utf-8
        set formatoptions+=mM
        set fencs=utf-8,gbk

        if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
                set ambiwidth=double
        endif
else
        echoerr "Sorry, this version of vim was not compiled with +multi_byte"
endif
