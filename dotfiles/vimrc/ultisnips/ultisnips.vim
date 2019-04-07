" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
set runtimepath +=~/mytools/dotfiles/vimrc/mysnippets/
g:ycm_key_list_select_completion=['<down>']

let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger = "<c-u>"
let g:UltiSnipsListSnippets = "<c-l>"
let g:UltiSnipsJumpForwardTrigger = "<c-f>"
let g:UltiSnipsJumpBackwardTrigger = "<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit = "vertical"
