" 自动打开 quickfix window ，高度为 16
let g:asyncrun_open = 16

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1
"项目根目录
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']

nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
"可在项目根目录下创建vimbuild.sh
nnoremap <silent> <F7> :AsyncRun ./vimbuild.sh <cr>
nnoremap <silent> <F9> :AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
