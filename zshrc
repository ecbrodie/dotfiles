ZSH_THEME="robbyrussell"

plugins=(git autojump brew common-aliases dircycle dirhistory gem rails web-search rake-fast bundler zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Prevent MAC extended attribute files (files starting with ._) from being included in tarballs
export COPYFILE_DISABLE=true

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

alias mzshrc='mvim ~/.zshrc'

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

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Git aliases.
alias glog='glol'
alias gci='git commit'
alias gup='git pull --rebase --stat'
alias gpf='git push --force-with-lease'
alias gwipall='git add . && gwip'

# Rails aliases
alias be='bundle exec'
export RAILS_FOOTNOTES_EDITOR=rubymine
function n() { node_modules/.bin/$@ ;}
alias dbstatus='rake db:migrate:status'
alias rollback='rake db:rollback'

# Vim aliases
alias vundle='vim +PluginInstall +qall'
alias vundle-clean='vim +PluginClean +qall'

# RVM Stuff
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Docker Stuffs
alias docker-rm-containers='docker rm `docker ps --no-trunc -aq`'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

brupdate() {
  brew update
  brew upgrade
  brew linkapps
  brew doctor
}
