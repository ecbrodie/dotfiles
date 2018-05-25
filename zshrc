ZSH_THEME="robbyrussell-WIP"

plugins=(git autojump brew common-aliases gem rails web-search rake-fast bundler zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Prevent MAC extended attribute files (files starting with ._) from being included in tarballs
export COPYFILE_DISABLE=true

# Shell Options
setopt HIST_FIND_NO_DUPS

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Common Aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -G'
alias la='ls -alG'
alias bower='noglob bower'
alias rmrf='rm -rf'

alias tarball='tar czvf'
alias untarball='tar -zxvf'

alias zipper='zip -r -X'
alias kill9='kill -9'
alias psaux='ps aux | grep'

# place this after nvm initialization!
# autoload -U add-zsh-hook
# load-nvmrc() {
#   if [[ -f .nvmrc && -r .nvmrc ]]; then
#     nvm use
#   elif [[ $(nvm version) != $(nvm version default)  ]]; then
#     echo "Reverting to nvm default version"
#     nvm use default
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc

# Git aliases.
alias glog='glol'
alias gci='git commit'
alias gup='git pull --rebase --stat'
alias gpf='git push --force-with-lease'
alias gwipall='git add . && gwip'
alias gdc='git diff --cached'
alias gap='git add --patch'

# Rails aliases
alias be='bundle exec'
function n() { node_modules/.bin/$@ ;}
alias dbstatus='rake db:migrate:status'
alias rollback='rake db:rollback'
alias fstart='foreman start'

# Yarn aliases
alias y='yarn'
alias yt='yarn test'
alias ytw='yarn test --watch'
alias yl='yarn lint'
alias yr='yarn run'

# Vim aliases
alias vundle='vim +PluginInstall +qall'
alias vundle-clean='vim +PluginClean +qall'

# Docker Stuffs
alias docker-rm-containers='docker rm `docker ps --no-trunc -aq`'
docker-run-once() {
	docker run -i -t --rm $1 bash
}
alias docker-clean-images='docker images -f dangling=true -q'

# Custom bindings to support iTerm keymappings
bindkey "^U" backward-kill-line
bindkey "^X^_" redo

brupdate() {
  brew update
  brew upgrade
  brew cleanup
  brew doctor
}
