syntax on
filetype plugin indent on
set number
set si
set ruler
set showmatch
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set background=dark " 背景使用黑色
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离 
set showcmd         " 输入的命令显示出来，看的清楚些
autocmd InsertLeave * se nocul  " 用浅色高亮当前行
autocmd InsertEnter * se cul    " 用浅色高亮当前行
set statusline=%F%m%r%h%w\ POS=[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
"set statusline=%F%r%h%w\ [%{&ff}]\ [%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
set laststatus=2
" set showtabline=2
set foldenable      " 允许折叠  
" set foldmethod=manual   " 手动折叠  
set completeopt=preview,menu  " 代码补全
set nobackup    " 从不备份
set noswapfile  " 禁止生成临时文件
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set confirm   " 在处理未保存或只读文件的时候，弹出确认

" 搜索逐字符高亮
set hlsearch
set incsearch

" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
set foldenable

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=c
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

" highlight < and >
set mps+=<:>

let &termencoding=&encoding
set fileencodings=utf-8-bom,ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,ucs,big5

"=========== tab navigation like firefox =====  
"nmap <C-S-n> :tabprevious<CR>  
"nmap <C-n> :tabnext<CR>  
"map <C-S-n> :tabprevious<CR>  
"map <C-n> :tabnext<CR>  
"imap <C-S-n> <Esc>:tabprevious<CR>
"imap <C-n> <Esc>:tabnext<CR>
"nmap <C-o> :browse tabnew<CR>  
"imap <C-o> <Esc>:browse tabnew<CR>  
"nmap <C-n> :tabnew<CR>  
"imap <C-n> <Esc>:tabnew<CR>  
 
" CUDA language
au BufNewFile,BufRead *.cu set ft=cpp
au BufNewFile,BufRead *.cuh set ft=cpp

"taglist will show in the right side
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Show_Menu=1

"syntax keyword xUNFIN contained
"syntax match xComment /%.*/ contains=xUNFIN
