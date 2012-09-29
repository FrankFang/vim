""""""""""""""""""""""""""""""""""""""""""��ɫ���
"�����﷨��������ɫ
if has("gui_running")
	colorscheme yytextmate
else
	colorscheme desert
endif

""""""""""""""""""""""""""""""""""""""""""�������
"��<>��������ʱ�ĳ���
set shiftwidth=4
"�Ʊ���ĳ��ȣ�ͳһΪ4���ո�Ŀ��
set tabstop=4
""""""""""""""""""""""""""""""""""""""""""����
"��ʼ���ڵĿ��
"set columns=195
"��ʼ���ڵĸ߶�
"set lines=45
"��ʼ���ڵ�λ��
"winpos 52 42
"�м�࣬���Ĭ��ֵ̫С�������ǳ�����
set linespace=4                                                                       

""""""""""""""""""""""""""""""""""""""""""�﷨
syntax enable
syntax on
filetype plugin indent on
set completeopt=longest,menu
""""""""""""""""""""""""""""""""""""""""""windows
set encoding=utf-8
"���ұ���Ĺ���vim7Ĭ�϶���utf-8���򿪰���gbk�ַ����ļ���������룩
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"GUI����������壬Ĭ���п����
set guifont=Monaco:h12:cANSI
set mousehide
language messages zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

""""""""""""""""""""""""""""""""""""""""""shortcuts
nmap tt :tabn<CR>
"auto indent
set ai! 
"��ʾ�к�
set number
"�к����Ŀ��
set numberwidth=4
"����������ʱ�г�ƥ����Ŀ��Ҳ���ǽ�ͼ�ײ���Ч��
set wildmenu
"��ʾ���λ��
set ruler
"�ָ��ʱ������ȵĿ�/��
set equalalways
 
 "ƥ�����ŵĹ����������html��<>
set matchpairs=(:),{:},[:],<:>
"���˸񣬿ո����¼�ͷ����������βʱ�Զ��Ƶ���һ�У�����insertģʽ��
set whichwrap=b,s,<,>,[,]
"ȡ���Զ�����
set nobackup
"����ر��ļ�֮ǰ����һ������
set writebackup


