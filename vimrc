" 丢弃vi固有的模式
set nocompatible 

" 字符超出边界自动换行
set wrap

" 自动补全配色更改Pmenu 列表选项颜色，PmenuSel 选中项颜色
highlight Pmenu ctermfg=LightGreen ctermbg=Black
highlight PmenuSel ctermfg=Black ctermbg=DarkYellow

" 文件类型检测
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" 搜索
" ======================================================
syntax on

set incsearch
" 忽视大小写
set ignorecase
" 智能大小写检测
set smartcase
" 高亮显示搜索结果
set hlsearch
" 取消上一次文件的高亮显示
 exec "nohlsearch"
" 添加行号
set number
" 编码格式 
set encoding=utf-8

" tab缩进格式
set tabstop=4
set shiftwidth=4
set softtabstop=4

" 使用删除键能够从当前行头删除到上一行
set backspace=indent,eol,start

" 收缩代码块
" set foldmethod=indent

" 映射修改快捷键
" ======================================================
" 
" 将\改为空格键
let mapleader=" "
" 空格+w 保存
map <leader>w :w<cr>
" 空格+q 退出不保存
map <leader>q :q!<cr>
" 空格+r 刷新vim配置件
map <leader>r :source ~/.vimrc<cr>
" 用空格回车取消高亮显示搜索结果

" 分屏
" ======================================================
map sr :set splitright<cr>:vsp<cr>
map sl :set nosplitright<cr>:vsp<cr>
map su :set nosplitbelow<CR>:sp<CR>
map sd :set splitbelow<CR>:sp<CR>

map <lEADER>l <C-w>l
map <lEADER>k <C-w>k
map <lEADER>j <C-w>j
map <lEADER>h <C-w>h

map <up> :res -5<CR>
map <down> :res +5<CR>
map <left> :vertical resize -5<CR>
map <right> :vertical resize +5<CR>

map tu :tabe<CR>
map tl :+tabnext<CR>
map th :-tabnext<CR>

" 插件
" ======================================================
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tomasr/molokai'
Plug 'preservim/nerdtree'
Plug 'kshenoy/vim-signature'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" molokai 配色
let g:rehash256 = 1

" NerdTree
map ff :NERDTreeToggle<CR>

" coc.nvim
set hidden

set cmdheight=2

set updatetime=100

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
