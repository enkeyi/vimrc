syntax on
set cursorline
set nu
set ts=4
set expandtab
set autoindent
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 插件项目
call plug#begin('~/.vim/plugged')
" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" nerdtree git
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" 插件配置
" NERDTree config
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
 " airline
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'
