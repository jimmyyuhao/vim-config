" 自动打开 quickfix window ，高度为 16
let g:asyncrun_open = 16
" 任务结束时候响铃提醒
let g:asyncrun_bell = 1
"项目根目录
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']

nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>


"可在项目根目录下创建.root文件  vimbuild.sh
autocmd FileType cpp nnoremap <silent> <F7> :AsyncRun ./vimbuild.sh <CR>
autocmd FileType python nnoremap <silent> <F7> :PymodeRun <CR>
autocmd FileType c nnoremap <silent> <F7> :!gcc % && ./a.out <CR>
autocmd FileType rust nnoremap <silent> <F7> :AsyncRun rustc ./src/main.rs && ./main <CR>

nnoremap <silent><F9> :YcmForceCompileAndDiagnostics<CR>:YcmDiags<CR>
" nnoremap <silent> <F9> :AsyncRun gcc -v -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>

 
