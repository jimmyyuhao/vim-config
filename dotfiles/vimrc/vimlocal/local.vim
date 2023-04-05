set nocompatible
set backspace=indent,eol,start
" 启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI

"tab trans to 4 spaces
set ts=4
set expandtab

set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8

"set leader key
let mapleader=","
let g:mapleader=","

" 低亮度显示所在行，所在列
"set cursorline
"set cursorcolumn

" 显示行号
set number

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("`\"") > 1 && line("`\"") <= line("$") | exe "normal! g`\"" | endif
" for simplicity, \"  au BufReadPost * exe \"normal! g`\"", is Okay.
endif

" execute project related configuration in current directory
if filereadable("workspace.vim")
    source workspace.vim
endif

set noshowmode "for echodoc

"If you prefer the scheme to match the original monokai background color, put this in your .vimrc file:
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

"打开more选项，列表消息会在全屏填满时暂停，通过nomore选项关闭就不会有暂停，列表消息会继续进行直到结束为止。
"set nomore
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set nu
set ruler
set hlsearch

if has("gui")
  set guioptions -=m "remove menu bar
  set guioptions -=T "remove toolbar
endif

"remap add mark for easy-clip already use m for "move"
nnoremap gm m
nnoremap <SPACE><SPACE> m0
nnoremap g1 '1
nnoremap g2 '2
nnoremap g3 '3
nnoremap g4 '4
nnoremap g5 '5
nnoremap g6 '6
nnoremap g7 '7
nnoremap g8 '8
nnoremap g9 '9
nnoremap g<SPACE> '0

"enable mouse
" set mouse=a

"copy whole line to clipboard
set clipboard=unnamed

set ttimeout ttimeoutlen=100
"enable Alt key
exec "set <m-a>=\ea"
exec "set <m-b>=\eb"
exec "set <m-c>=\ec"
exec "set <m-d>=\ed"
exec "set <m-e>=\ee"
exec "set <m-f>=\ef"
exec "set <m-g>=\eg"
exec "set <m-h>=\eh"
exec "set <m-i>=\ei"
exec "set <m-j>=\ej"
exec "set <m-k>=\ek"
exec "set <m-l>=\el"
exec "set <m-m>=\em"
exec "set <m-n>=\en"
exec "set <m-o>=\eo"
exec "set <m-p>=\ep"
exec "set <m-q>=\eq"
exec "set <m-r>=\er"
exec "set <m-s>=\es"
exec "set <m-t>=\et"
exec "set <m-u>=\eu"
exec "set <m-v>=\ev"
exec "set <m-w>=\ew"
exec "set <m-x>=\ex"
exec "set <m-y>=\ey"
exec "set <m-z>=\ez"

"tab control
nmap <leader>tc :tabnew<RETURN>
nmap <leader>td :tabc<RETURN>

"goto c function name
nnoremap <m-f> [[kf(b

"display or goto definition
nnoremap <m-e> g]

nmap daab mibdabP
nmap daaB miBdaBP
nmap daa< mi<da<P
nmap daa" mi"da"P

"diff option 
set diffopt+=vertical,internal,algorithm:patience

function g:Shell()
    exe "terminal"
endfun

command Shell call Shell()

"local list and quickfix keymap
nnoremap <leader>qp :col<RETURN>
nnoremap <leader>qn :cnew<RETURN>
nnoremap <leader>lp :lol<RETURN>
nnoremap <leader>ln :lnew<RETURN>
nnoremap <leader>hp :chi<RETURN>
nnoremap <leader>hl :lhi<RETURN>

"gdb support
:packadd termdebug

"git history
nnoremap <leader>H :Gstatus<RETURN>:Glog<RETURN><RETURN><c-w>L:vsplit<RETURN>:copen<RETURN><c-w>J<c-w>k<c-w>k<c-w>l<c-w>l<c-w>l:q<RETURN><c-w>h:Gllog<RETURN><RETURN><c-o><c-o>:lopen<RETURN><c-w>k:difft<RETURN>:vsplit<RETURN><c-w>j<RETURN>:difft<RETURN>

"GDB
command Gdb call Termdebug()
let termdebugger = "gdb" "set the gdb program, default is gdb
nmap <leader>G :Gdb<RETURN>
" nmap <leader>S :Source<RETURN>
nmap <leader>B :Break<RETURN>
nmap <leader>Bc :Clear<RETURN>
nmap <leader>F :Finish<RETURN>
nmap <leader>S :Step<RETURN>
nmap <leader>N :Over<RETURN>
nmap <leader>C :Continue<RETURN>
nmap <leader>E :Eval<RETURN>
nmap <leader>W :Winbar<RETURN>

"window op
nmap <c-w><c-j> <c-w>10-
nmap <c-w><c-k> <c-w>10+

if !has("unix")
endif

if !has("win32")
endif
