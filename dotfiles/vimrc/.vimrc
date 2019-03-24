call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'skywind3000/quickmenu.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-projectionist'
Plug 'skywind3000/vim-preview'
Plug 'vim-scripts/Mark--Karkat'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'terryma/vim-multiple-cursors'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-unimpaired'
Plug 'shougo/echodoc.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'thaerkh/vim-workspace'
Plug 'tomasr/molokai'
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'ekalinin/dockerfile.vim'
Plug 'moll/vim-bbye'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rking/ag.vim'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'wannesm/wmgraphviz.vim'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'tpope/tpope-vim-abolish'
Plug 'mg979/vim-visual-multi'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-smooth-scroll'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'mfukar/robotframework-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'svermeulen/vim-easyclip'
Plug 'valloric/listtoggle'
Plug 'kana/vim-textobj-user'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'davidosomething/easyclipring.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-repeat'
Plug 'mileszs/ack.vim'
Plug 'axiaoxin/vim-json-line-format'
call plug#end()

source ~/mytools/dotfiles/vimrc/vimlocal/local.vim
source ~/mytools/dotfiles/vimrc/ag/ag.vim
source ~/mytools/dotfiles/vimrc/asyncrun/asyncrun.vim
source ~/mytools/dotfiles/vimrc/ale/ale.vim
source ~/mytools/dotfiles/vimrc/auto-pairs/auto-pairs.vim
source ~/mytools/dotfiles/vimrc/DoxgenToolkit/DoxgenToolkit.vim
source ~/mytools/dotfiles/vimrc/easyclipring/easyclipring.vim
source ~/mytools/dotfiles/vimrc/easymotion/easymotion.vim
source ~/mytools/dotfiles/vimrc/gtags/gtags.vim
source ~/mytools/dotfiles/vimrc/gutentags/gutentags.vim
source ~/mytools/dotfiles/vimrc/leaderf/leaderf.vim
source ~/mytools/dotfiles/vimrc/listtoggle/listtoggle.vim
source ~/mytools/dotfiles/vimrc/mark/mark.vim
source ~/mytools/dotfiles/vimrc/neoformat/neoformat.vim
source ~/mytools/dotfiles/vimrc/neomake/neomake.vim
source ~/mytools/dotfiles/vimrc/nerdtree/nerd.vim
source ~/mytools/dotfiles/vimrc/nerdcomment/nerdcomment.vim
source ~/mytools/dotfiles/vimrc/python-mode/python-mode.vim
source ~/mytools/dotfiles/vimrc/signify/signify.vim
source ~/mytools/dotfiles/vimrc/vim-fswitch/vim-fswitch.vim
source ~/mytools/dotfiles/vimrc/vim-eighties/vim-eighties.vim
source ~/mytools/dotfiles/vimrc/vim-easyclip/vim-easyclip.vim
source ~/mytools/dotfiles/vimrc/vim-cpp-enhanced-highlight/vim-cpp-enhanced-highlight.vim
source ~/mytools/dotfiles/vimrc/vim-fugitive/vim-fugitive.vim
source ~/mytools/dotfiles/vimrc/vim-fzf/vim-fzf.vim
source ~/mytools/dotfiles/vimrc/vim-json-line-format/vim-json-line-format.vim
source ~/mytools/dotfiles/vimrc/vim-preview/vim-preview.vim
source ~/mytools/dotfiles/vimrc/vim-smooth-scroll/vim-smooth-scroll.vim
source ~/mytools/dotfiles/vimrc/wmgraphviz/wmgraphviz.vim
source ~/mytools/dotfiles/vimrc/workspace/workspace.vim
source ~/mytools/dotfiles/vimrc/youcompleteme/youcompleteme.vim
