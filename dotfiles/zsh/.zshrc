# Created by newuser for 5.0.2
source ~/mytools/zshTools/.zshrc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
ZSH_THEME="agnoster"

source ~/mytools/zshTools/.oh-my-zsh/plugins/autojump/autojump.plugin.zsh
export PATH=$PATH:~/opt/bin/
export PATH=$PATH:~/mytools/tmuxTools/.tmux/plugins/tmux-butler/scripts/

#go
export PATH=$PATH:/usr/lib/go-1.18/bin/
export PATH=$PATH:~/go/bin/
#export GOPROXY=https://goproxy.cngoproxy.cn
export GOPROXY=https://goproxy.cn,direct
export GO111MODULE=on

#docker
# for wsl docker
# export DOCKER_HOST=tcp://127.0.0.1:2375

# for ubuntu2204 docker
# export DOCKER_HOST='unix:///var/run/docker.sock'
