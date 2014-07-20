" 设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

" 设定开启鼠标 
set mouse=a

let g:solarized_termcolors=16
let g:tabular_loaded = 1

" 记录上次打开位置
autocmd BufReadPost * 
              \ if line("'\"")>0&&line("'\"")<=line("$") | 
              \ exe "normal g'\"" | 
              \ endif

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

set background=dark

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 语法高亮
syntax on

" 字符间插入的像素行数目
set linespace=0

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch

" 在搜索的时候忽略大小写
set ignorecase

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 显示行号
set nu

set t_Co=256

" 用空格代替制表符
set expandtab


let g:ycm_global_ycm_extra_conf='/home/max/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" 用空格键来开关折叠
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>

" 删除行尾部的空格
map <F2> :%s/\s*$//g<cr>:noh<cr>"


filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

" python制表符为4统一缩进为4
set tabstop=4
set softtabstop=4
set shiftwidth=4

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby setlocal tabstop=2 shiftwidth=2 softtabstop=2

"pydiction 1.2(python语法高亮)
filetype plugin on


" 为pyflakes的高亮提示设置颜色
if has("gui_running") 
    highlight SpellBad term=underline gui=undercurl guisp=Orange 
endif 


"default g:pydiction_menu_height = 15
"let g:pydiction_menu_height =20

"settings for minibuffer
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1


set nocompatible               " be iMproved
filetype off                   " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" NERDTree setting
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>

 
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
 
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'python.vim'
Bundle 'python_ifold'

" non github repos
" ...

Bundle 'git://github.com/Lokaltog/vim-powerline.git'
Bundle 'https://github.com/vim-scripts/The-NERD-tree'
Bundle 'https://github.com/vim-scripts/The-NERD-Commenter'
Bundle 'https://github.com/Valloric/YouCompleteMe'
Bundle 'https://github.com/spf13/vim-autoclose'
Bundle 'https://github.com/vim-scripts/Solarized'
Bundle 'https://github.com/myhere/vim-nodejs-complete'
Bundle 'git://github.com/godlygeek/tabular.git'
Bundle 'https://github.com/myhere/vim-nodejs-complete.git'
Bundle 'https://github.com/kchmck/vim-coffee-script.git'
Bundle 'derekwyatt/vim-scala'
Bundle 'https://github.com/vim-scripts/pyflakes.vim'
Bundle 'https://github.com/davidhalter/jedi-vim'
Bundle 'https://github.com/vim-scripts/pyflakes.vim'
Bundle 'https://github.com/vim-scripts/Emmet.vim'
Bundle 'https://github.com/vim-scripts/Markdown'
Bundle 'https://github.com/mfukar/robotframework-vim'
Bundle 'https://github.com/kien/ctrlp.vim'
Bundle 'https://github.com/harveyzh/google_python_style'
Bundle 'cespare/vim-golang'

filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
