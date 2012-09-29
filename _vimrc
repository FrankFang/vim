"设置语法高亮的配色
if has("gui_running")
	colorscheme yytextmate
else
	colorscheme desert
endif
"查找编码的规则（vim7默认都用utf-8，打开包含gbk字符的文件会出现乱码）
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"GUI界面里的字体，默认有抗锯齿
set guifont=Monaco:h12:cANSI
"行间距，如果默认值太小，代码会非常纠结
set linespace=4                                                                       
"用<>调整缩进时的长度
set shiftwidth=4
"制表符的长度，统一为4个空格的宽度
set tabstop=4
"初始窗口的宽度
set columns=195
"初始窗口的高度
set lines=45
"初始窗口的位置
winpos 52 42
 
"显示行号
set number
"行号栏的宽度
set numberwidth=4
"在输入命令时列出匹配项目，也就是截图底部的效果
set wildmenu
"显示光标位置
set ruler
"分割窗口时保持相等的宽/高
set equalalways
 
 "匹配括号的规则，增加针对html的<>
set matchpairs=(:),{:},[:],<:>
"让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
set whichwrap=b,s,<,>,[,]
"取消自动备份
set nobackup
"保存关闭文件之前保留一个备份
set writebackup
 
"js语法高亮脚本的设置
"let g:javascript_enable_domhtmlcss=1
 
"设置自定义的<leader>快捷键
"let mapleader=","
"let g:mapleader=","
 

