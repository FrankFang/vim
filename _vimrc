""""""""""""""""""""""""""""""""""""""""""系统
"不支持VI模式，支持了会不方便，而且我也没学过VI
set nocompatible
"不用保存，_vimrc就能生效，前提是所有function后加!
autocmd! bufwritepost _vimrc source %:p
"用 CTRL-S, CTRL-X, CTRL-C 和 CTRL-V 这些标准的 MS-Windows 操作方式，详情参见 :help mswin
source $VIMRUNTIME/mswin.vim
"取消自动备份
set nobackup
"保存关闭文件之前保留一个备份
set writebackup
let mapleader=","

""""""""""""""""""""""""""""""""""""""""""外观
"c "设置语法高亮的配色
if has("gui_running")
	colorscheme yytextmate
else
	colorscheme desert
endif
"e "分割窗口时保持相等的宽/高
set equalalways
"g "GUI界面里的字体，默认有抗锯齿
set guifont=Yahei_Mono:h11
"l "行间距 0到5比较合理
set linespace=1                                                                       
"m
set mousehide
"n 
set number "显示行号
set numberwidth=4 "行号栏的宽度
set nowrap
"r "显示光标位置
set ruler
"t "取消宽度限制
set textwidth=0
"w "在输入命令时列出匹配项目，也就是截图底部的效果
set wildmenu
set ignorecase
set showmatch
set incsearch "边输入边搜索
set hlsearch
""""""""""""""""""""""""""""""""""""""""""缩进
"a "auto indent
set ai! 
"e "空格代替tab
set expandtab
"s "用<>调整缩进时的长度
set shiftwidth=4
set smarttab
set smartindent
"t "制表符的长度，统一为4个空格的宽度
set tabstop=4
"w "让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
set whichwrap=b,s,<,>,[,]
""""""""""""""""""""""""""""""""""""""""""折叠
set foldenable
set foldmethod=indent
"用空格折叠或打开代码
nnoremap <space> @=((foldclosed(line('.'))<0)?'zc':'zo')<CR> 
""""""""""""""""""""""""""""""""""""""""""窗口
"启动时自动最大化
if has("win32")
au GUIEnter * simalt ~x
endif

""""""""""""""""""""""""""""""""""""""""""语法
"c "自动补全
set completeopt=longest,menu
"f
filetype plugin indent on
"m "匹配括号的规则，增加针对html的<>
set matchpairs=(:),{:},[:],<:>
"s
syntax enable
syntax on
"在html文件中支持js语法
let g:javascript_enable_domhtmlcss=1


""""""""""""""""""""""""""""""""""""""""""Windows
"e
set encoding=utf-8
"f "查找编码的规则（vim7默认都用utf-8，打开包含gbk字符的文件会出现乱码）
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"l "防止乱码
language messages zh_CN.utf-8
"s
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"w
set winaltkeys=menu
""""""""""""""""""""""""""""""""""""""""""快捷键
nmap tt :tabn<CR>
"取消<C-W>在insert模式的默认动作
inoremap <C-W> <ESC><C-W>
inoremap <C-U> <ESC><C-U>
""""""""""""""""""""""""""""""""""""""""""SCSS
"当保存filename.scss文件时，会自动将其编译，并保存至../css/filename.css
autocmd BufWritePost,FileWritePost *.scss execute "silent !scss -t compact ".expand('%:p').' '.expand('%:p:h').'/../css/'.expand('%:t:r').'.css'
""""""""""""""""""""""""""""""""""""""""""browser
"用浏览器打开html/htm/shtml文件
function! ViewInBrowser(name)
    if expand("%:e") != 'html' && expand('%:e') != 'htm' && expand('%:e') != 'shtml'
        return 
    endif
    let file = expand("%:p")
    exec ":update ".file
    let l:browsers = { "c":"chrome", "e":"iexplore", "f":"firefox" }
    exec ":silent !start ".l:browsers[a:name] ." file://". file
endfunction
map <F4>c :call ViewInBrowser('c')<CR>
map <F4>e :call ViewInBrowser('e')<CR>
map <F4>f :call ViewInBrowser('f')<CR>
map <A-d><A-d> :TaskList<CR>
"TODO:it
 


