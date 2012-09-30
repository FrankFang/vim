""""""""""""""""""""""""""""""""""""""""""ϵͳ
"��֧��VIģʽ��֧���˻᲻���㣬������Ҳûѧ��VI
set nocompatible
"���ñ��棬_vimrc������Ч��ǰ��������function���!
autocmd! bufwritepost _vimrc source %:p
"�� CTRL-S, CTRL-X, CTRL-C �� CTRL-V ��Щ��׼�� MS-Windows ������ʽ������μ� :help mswin
source $VIMRUNTIME/mswin.vim
"ȡ���Զ�����
set nobackup
"����ر��ļ�֮ǰ����һ������
set writebackup
let mapleader=","

""""""""""""""""""""""""""""""""""""""""""���
"c "�����﷨��������ɫ
if has("gui_running")
	colorscheme yytextmate
else
	colorscheme desert
endif
"e "�ָ��ʱ������ȵĿ�/��
set equalalways
"g "GUI����������壬Ĭ���п����
set guifont=Yahei_Mono:h11
"l "�м�� 0��5�ȽϺ���
set linespace=1                                                                       
"m
set mousehide
"n 
set number "��ʾ�к�
set numberwidth=4 "�к����Ŀ��
set nowrap
"r "��ʾ���λ��
set ruler
"t "ȡ���������
set textwidth=0
"w "����������ʱ�г�ƥ����Ŀ��Ҳ���ǽ�ͼ�ײ���Ч��
set wildmenu
set ignorecase
set showmatch
set incsearch "�����������
set hlsearch
""""""""""""""""""""""""""""""""""""""""""����
"a "auto indent
set ai! 
"e "�ո����tab
set expandtab
"s "��<>��������ʱ�ĳ���
set shiftwidth=4
set smarttab
set smartindent
"t "�Ʊ���ĳ��ȣ�ͳһΪ4���ո�Ŀ��
set tabstop=4
"w "���˸񣬿ո����¼�ͷ����������βʱ�Զ��Ƶ���һ�У�����insertģʽ��
set whichwrap=b,s,<,>,[,]
""""""""""""""""""""""""""""""""""""""""""�۵�
set foldenable
set foldmethod=indent
"�ÿո��۵���򿪴���
nnoremap <space> @=((foldclosed(line('.'))<0)?'zc':'zo')<CR> 
""""""""""""""""""""""""""""""""""""""""""����
"����ʱ�Զ����
if has("win32")
au GUIEnter * simalt ~x
endif

""""""""""""""""""""""""""""""""""""""""""�﷨
"c "�Զ���ȫ
set completeopt=longest,menu
"f
filetype plugin indent on
"m "ƥ�����ŵĹ����������html��<>
set matchpairs=(:),{:},[:],<:>
"s
syntax enable
syntax on
"��html�ļ���֧��js�﷨
let g:javascript_enable_domhtmlcss=1


""""""""""""""""""""""""""""""""""""""""""Windows
"e
set encoding=utf-8
"f "���ұ���Ĺ���vim7Ĭ�϶���utf-8���򿪰���gbk�ַ����ļ���������룩
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"l "��ֹ����
language messages zh_CN.utf-8
"s
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"w
set winaltkeys=menu
""""""""""""""""""""""""""""""""""""""""""��ݼ�
nmap tt :tabn<CR>
"ȡ��<C-W>��insertģʽ��Ĭ�϶���
inoremap <C-W> <ESC><C-W>
inoremap <C-U> <ESC><C-U>
""""""""""""""""""""""""""""""""""""""""""SCSS
"������filename.scss�ļ�ʱ�����Զ�������룬��������../css/filename.css
autocmd BufWritePost,FileWritePost *.scss execute "silent !scss -t compact ".expand('%:p').' '.expand('%:p:h').'/../css/'.expand('%:t:r').'.css'
""""""""""""""""""""""""""""""""""""""""""browser
"���������html/htm/shtml�ļ�
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
 


