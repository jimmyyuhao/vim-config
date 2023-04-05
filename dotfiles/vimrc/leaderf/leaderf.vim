let g:Lf_ShortcutF = '<c-p>'

noremap <leader>f :LeaderfFile<cr>

noremap <m-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>

"gotofile 
nmap <leader>gf y3e:split<CR><c-w><right><c-p><c-v>

"gotoline
nmap gl y3e4w"tyaw4b<c-w><up><c-p><c-v><CR>:<c-r>t<CR>

nmap <leader>gl ^EF/wy3e<c-w><left><c-p><c-v><CR><c-w><right>3w"tyaw3b<c-w><left>:<c-r>t<CR>

nmap <leader><leader>gl y3e3w"tyaw4b<c-w><up><c-p><c-v><CR>:<c-r>t<CR>
nmap <leader>m :LeaderfMarks<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_UseVersionControlTool=0
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_DefaultExternalTool = "ag"
"let g:Lf_ExternalCommand = 'find "%s" -type f'           " On MacOSX/Linux

let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_WildIgnore = {
                \'dir':['.svn','.git','temp','tmp'],
                \'file':['*.sw?','.bak','*.exe','*.py[co]','*.o','*.so']
                \}
let g:Lf_WindowPosition = 'popup'
let g:Lf_JumpToExistingWindow = 0
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" " For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
" " If needs
" set ambiwidth=double"
" "
