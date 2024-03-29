set helplang=cn
set encoding=utf-8
" 行号
set nu
set rnu
" 显示当前模式
set showmode
" 上下可视行数
set scrolloff=6
"开启光标位置提示
set ruler
" 回车后缩进
set smartindent
" 语法高亮
syntax on
" tab 长度为 4
set tabstop=2
" 替换 tab 为 space
set expandtab
set history=1024
" 搜索忽略大小写，但有一个或以上大写字母时仍大小写敏感
set ignorecase
set smartcase
" 搜索到文件两端时不重新搜索
set nowrapscan
" 搜索时高亮
set hlsearch
" 关闭错误声音
set noerrorbells
set novisualbell
" 显示括号配对情况
set showmatch
" 高亮行和列
set cursorcolumn
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" 不创建备份文件
set nobackup
" 使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

hi comment ctermfg=6

"""" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" typescript
Plugin 'leafgarland/typescript-vim'

" easymotion
Plugin 'easymotion/vim-easymotion'

" dracula https://draculatheme.com/vim
Plugin 'dracula/vim', {'name': 'dracula'}

Plugin 'neovimhaskell/haskell-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required

"----------airline------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1        "显示buffer编号
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#battery#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_theme='onedark'

" color theme
colorscheme molokai
" colorscheme dracula

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""

" 显示正在输入的命令
" 必须 set nocompatible 之后
set showcmd

""""" easymotion
map , <Plug>(easymotion-prefix)
""""""""""""""""
