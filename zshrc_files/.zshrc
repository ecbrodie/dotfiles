# UNCOMMENT FOR ZSH PROFILING (as well as bottom of file)
# zmodload zsh/zprof # top of your .zshrc file

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell-WIP"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/

#plugins=(git autojump brew common-aliases gem rails web-search zsh-autosuggestions)
plugins=(git git-extras rake-fast vi-mode autojump)

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Prevent MAC extended attribute files (files starting with ._) from being included in tarballs
export COPYFILE_DISABLE=true

# Shell Options
setopt HIST_FIND_NO_DUPS

# Stupid fix for stupid error 'Too many open files - getcwd'
# Commented out for now, experimenting with new machine
# https://superuser.com/a/433789/175226
# ulimit -n 2048

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# Common Aliases
alias zshrc="vim ~/.zshrc"
alias vim='nvim'
#alias nvimrc='nvim ~/.config/nvim/init.vim'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#alias ls='ls -G'
#alias la='ls -alG'
alias rmrf='rm -rf'

alias tarball='tar czvf'
alias untarball='tar -zxvf'

alias zipper='zip -r -X'
alias kill9='kill -9'
alias psaux='ps aux | grep'
alias dnsflushcache='sudo killall -HUP mDNSResponder; sudo killall mDNSResponderHelper; sudo dscacheutil -flushcache'

# Git aliases.
alias glog='glol'
alias gci='git commit'
alias gup='git pull --rebase --stat'
alias gpf='git push --force-with-lease'
alias gwipall='git add . && gwip'
alias gdc='git diff --cached'
alias gap='git add --patch'
alias gdad='git dad'
alias gpuo='git push -u origin'
alias gptags='git push --tags'
alias gcm='git checkout main'
alias grbm='git rebase main'

# Rails aliases
alias fstart='foreman start'
alias be='bundle exec'
alias dbmigrate='rake db:migrate && rake db:test:prepare'
alias dbstatus='rake db:migrate:status'
alias dbrollback='rake db:rollback'
alias nospring='DISABLE_SPRING=1'
alias rubofast='rubocop -D --parallel'
alias rubofix='rubocop -a'

# Yarn aliases
alias y='yarn'
alias yt='yarn test'
alias ytw='yarn test --watch'
alias yl='yarn lint'
alias ylf='yarn lint:fix'
alias yr='yarn run'

# Vim aliases (maybe deprecated)
alias vundle='vim +PluginInstall +qall'
alias vundle-clean='vim +PluginClean +qall'

# Docker Stuffs
alias dockerpruneall="echo 'Pruning Volumes' && docker volume prune -f \
  && echo 'Pruning Containers' && docker container prune -f \
  && echo 'Pruning Images' && docker image prune -f"
alias docker-rm-containers='docker rm `docker ps --no-trunc -aq`'
docker-bash-image() {
  docker run -it --rm $1 /bin/bash
}
docker-bash-container() {
  docker exec -it $1 /bin/bash
}
alias docker-clean-images='docker images -f dangling=true -q'

append-newline() {
  sed -i -e '$a\' $1
}

list-port() {
  if [[ -n "$1" ]]; then
    lsof -nP -i4TCP:$1 | ag LISTEN
  else
    lsof -nP -i4TCP
  fi
}

# Path modifications
export PATH="$PATH:$HOME/bin"
export PATH="/usr/local/opt/python/libexec/bin:$PATH" # To support homebrew python3
export PATH="$HOME/Library/Python/3.8/bin:$PATH" # Add python3 executables to the path
export PATH="/usr/local/sbin:$PATH" # Recommended by Homebrew

# NVM Stuff
source ~/.lazy_nvm



# Custom bindings to support iTerm keymappings
bindkey "^U" backward-kill-line
bindkey "^X^_" redo

brupdate() {
  brew update
  brew upgrade
  brew cleanup
  brew doctor
}
