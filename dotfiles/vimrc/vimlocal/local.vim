set nocompatible
set backspace=indent,eol,start
set shortmess=atI 

"tab trans to 4 spaces
set ts=4
set expandtab

set fileencoding=utf-8,ucs-bom,utf-16,gb2312,gbk,big5,gb18030,cp936,latin1
set termencoding=utf-8
set encoding=utf-8

let mapleader=","
let g:mapleader=","

set mouse=a
set cursorline
set cursorcolumn
set number 

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("`\"") > 1 && line("`\"") <= line("$") | exe "normal! g`\"" | endif
" for simplicity, "  au BufReadPost * exe "normal! g`\"", is Okay.
endif

" execute project related configuration in current directory
if filereadable("workspace.vim")
    source workspace.vim
endif 

set noshowmode "for echodoc
"If you prefer the scheme to match the original monokai background color, put this in your .vimrc file: 
colorscheme molokai
let g:molokai_original = 1
let g:rehash256=1

set nomore

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set nu
set ruler
set hlsearch
set backspace=2

if has("gui")
    set guioptions -=m "remove menu
    set guioptions -=T "remove Toolbar
endif

"remap addmark for easy-clip already user m for "move"
nnoremap gm m

"copy whole line to clipboard
set clipboard=unnamed

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

set ttimeout ttimeoutlen=100

"jump forward or backward when using mouse
nmap <c-m-d> <c-o>
nmap <c-m-f> <c-i>

"tab control
nmap <leader>tc :tabnew<CR>
nmap <leader>td :tabc<CR>

"got c function name
nnoremap <m-f> [[kf(b

"display or goto definition
nnoremap <m-e> g]

"diff option 
set diffopt +=vertical,internal,algorithm:patience

"local list and quickfix keymap
nnoremap <leader>qp :col<CR>
nnoremap <leader>qn :cnew<CR>
nnoremap <leader>lp :lol<CR>
nnoremap <leader>ln :lnew<CR>
nnoremap <leader>hp :col<CR>
nnoremap <leader>qp :col<CR>
nnoremap <leader>hn :chi<CR>
nnoremap <leader>hl :lhi<CR>

"gdb support
:packadd termdebug

if !has("unix")
endif

if !has("win32")
endif
