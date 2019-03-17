let g:ale_c_parse_compile_commands=1
let g:ale_linters={
            \ 'javascript':['eslint'],
            \ 'cpp':['cppcheck','clangtidy']
            \}
let g:ale_lint_on_text_changed ='never'
let g:ale_lint_on_enter=0
