let g:ale_c_parse_compile_commands=1
" let b:ale_c_parse_compile_commands=1
let g:ale_linters_explicit = 1
 let g:ale_set_balloons = 1
let g:ale_linters={
            \ 'javascript':['eslint'],
            \ 'cpp':['clangtidy','clangd']
            \}
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
"let g:ale_c_cppcheck_executable = '/home/yuhao/mytools/vimTools/thirdparty_Tools/cppcheck-1.86/cppcheck'
let g:ale_open_list = 'on_save'
let g:ale_c_cppcheck_options  = '--enable=warning,information -v  -ipublic/'
let b:ale_c_cppcheck_options  = '--enable=warning,information -v  -ipublic/'
let g:ale_cpp_cppcheck_options = '--enable=error,warning,information -v --suppress=missingIncludeSystem --check-config -ipublic/'
let b:ale_cpp_cppcheck_options =  '--enable=error,warning,information -v --suppress=missingIncludeSystem --check-config -ipublic/'

" let g:ale_cpp_clang_executable = '/home/yuhao/.local/bin/clang++'
let g:ale_cpp_clang_options = '-std=c++11 -Wall'
" let g:ale_cpp_clangtidy_executable = '/home/yuhao/.local/bin/clang-tidy'
let g:ale_cpp_clangtidy_checks = [ 'cppcoreguidelines-*', '-performance-*', '-modernize-*', 'bugprone-*', 'clang-*', 'misc-*', 'cert-*','-cert-err58-cpp', '-modernize-use-trailing-return-type','-cppcoreguidelines-pro-type-vararg','-cppcoreguidelines-avoid-magic-numbers','-cppcoreguidelines-pro-type-cstyle-cast']
" let g:ale_cpp_clangcheck_executable = '/home/yuhao/.local/bin/clang-check'
" let g:ale_cpp_clangd_executable = '/home/yuhao/.local/bin/clangd'

" let g:ale_c_clangtidy_executable = '/home/yuhao/.local/bin/clang-tidy'
let g:ale_c_clangtidy_checks = ['clang-']
" let g:ale_c_clangcheck_executable = '/home/yuhao/.local/bin/clang-check'
" let g:ale_c_clangd_executable  = '/home/yuhao/.local/bin/clangd'
" let g:ale_c_clang_executable = '/home/yuhao/.local/bin/clang++'
let g:ale_c_clang_options = '-std=c++11 -Wall'

" let b:ale_c_clangtidy_executable = '/home/yuhao/.local/bin/clang-tidy'
" let b:ale_cpp_clangtidy_executable = '/home/yuhao/.local/bin/clang-tidy'
" let b:ale_cpp_clangcheck_executable = '/home/yuhao/.local/bin/clang-check'
" let b:ale_c_clangcheck_executable = '/home/yuhao/.local/bin/clang-check'
" let b:ale_c_clangd_executable  = '/home/yuhao/.local/bin/clangd'

let g:ale_enabled=1
" let b:ale_enabled=1



