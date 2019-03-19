nnoremap <m-s> [[vaB<ESC>mx[[<up>V'x:Neoformat<CR><c-o><c-o><c-o><c-o>
vnoremap <m-s> :Neoformat<CR>
inoremap <m-s> <ESC>[[vaB<ESC>mx[[<up>V'x:Neoformat<CR><c-o><c-o><c-o><c-o>li

let g:neoformat_cpp_astyle = {
    \'exe' :'astyle',
    \'args':['--mode=c','--indent=spaces=4','--convert-tabs','--pad-oper','--indent-col1-comments','--unpad-paren','--max-code-length-120','--add-one-line-brackets','--style=linux','--indent-classes','--keep-one-line-statements','--add-brackets','--pad-header','--break-blocks','--break-after-logical','--min-condition-indent=2','--max-instatement-indent=40','--keep-one-blocks'],
    \'replace':0,
    \'stdin':1,
    \'valid_exit_codes':[0,23],
    \'no_append':1
    \}
let g:neoformat_enabled_cpp= ['astyle']
let g:neoformat_try_formatprg =1
