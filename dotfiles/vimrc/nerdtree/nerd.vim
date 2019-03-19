" 切换NERDTree打开关闭状态 快捷键
map <leader>t :NERDTreeToggle<CR>
"找到当前文件所在目录并打开
nnoremap <leader>gd :NERDTreeFind<CR>zz

" 显示行号
"let NERDTreeShowLineNumbers=1
"let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=25
" 在终端启动vim时，共享NERDTree
"let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc$','\~$','\.swp$','\.o$']
" 显示书签列表
let NERDTreeShowBookmarks=1
