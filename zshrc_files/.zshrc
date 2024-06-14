# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/evanbrodie/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="robbyrussell-WIP"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras vi-mode gh ripgrep copypath copyfile fd fzf safe-paste timer urltools zsh-interactive-cd)
VI_MODE_DISABLE_CLIPBOARD=true

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Prevent MAC extended attribute files (files starting with ._) from being included in tarballs
export COPYFILE_DISABLE=true

# Shell Options
setopt HIST_FIND_NO_DUPS

# Stupid fix for stupid error 'Too many open files - getcwd'
# Commented out for now, experimenting with new machine
# https://superuser.com/a/433789/175226
# ulimit -n 2048

# Common Aliases
alias zshrc="vim ~/.zshrc"
alias vim='nvim'
alias vimrc='vim ~/.vimrc'
alias nvimrc='nvim ~/.config/nvim/init.vim'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#alias ls='ls -G'
#alias la='ls -alG'
alias rmrf='rm -rf'

alias tarball='tar czvf'
alias untarball='tar -zxvf'

alias shuffler="ruby -e 'puts ARGV.shuffle.join(\"\n\")'"

alias zipper='zip -r -X'
alias kill9='kill -9'
alias psaux='ps aux | grep'
alias dnsflushcache='sudo killall -HUP mDNSResponder; sudo killall mDNSResponderHelper; sudo dscacheutil -flushcache'

# Git aliases.
alias glog='glol'
alias gci='git commit'
alias gup='git pull --rebase --stat'
alias gupom='gup origin $(git_main_branch)'
alias gwipall='git add . && gwip'
alias gdc='git diff --cached'
alias gap='git add --patch'
alias gdad='git dad'
alias gpuo='git push -u origin'
alias gptags='git push --tags'
alias gdelete='git delete-branch'
alias gcam='gci --amend'
alias gcama='gci --amend --no-edit -a'
alias gcbr='git_current_branch'
alias gdn='git diff --name-only'
alias gdnm='git diff --name-only $(git_main_branch)'
alias gupa='gpra'

alias copy-branch='echo $(git_current_branch) | pbcopy'

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
alias yb='yarn build'

# Pnpm aliases
alias p='pnpm'
alias pi='pnpm install'
alias pt='pnpm run test'
alias pl='pnpm run lint'
alias pb='pnpm run build'

append-newline() {
  sed -i -e '$a\' $1
}

list-port() {
  if [[ -n "$1" ]]; then
    lsof -nP -i4TCP:$1 | rg LISTEN
  else
    lsof -nP -i4TCP
  fi
}

# Path modifications
export PATH="$PATH:$HOME/bin"
export PATH="/usr/local/sbin:$PATH"         # Recommended by Homebrew
export PATH="/usr/local/share/chruby:$PATH" # chruby

Custom bindings to support iTerm keymappings
bindkey "^U" backward-kill-line
bindkey "^X^_" redo

brupdate() {
  brew update
  brew upgrade
  brew cleanup
  brew doctor
}

# Anything below this point are things that should be set either automatically by installers
# or I am manually instructed to add from post-install instructions.
