let g:Lf_ShortcutF = '<c-p>'

noremap <leader>f :LeaderfFunction!<cr>

noremap <m-p> :LeaderfMru!<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>

"gotofile 
nmap <leader>gf y3e:split<CR><c-w><right><c-p><c-v>

"gotoline
nmap gl y3e4w"tyaw4b<c-w><up><c-p><c-v><CR>:<c-r>t<CR>


let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_UseVersionControlTool=0
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_WildIgnore = {
                \'dir':['.svn','.git','temp'],
                \'file':['*.sw?','.bak','*.o','*.so']
                \}
