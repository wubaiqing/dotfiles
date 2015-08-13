export ZSH=$HOME/.oh-my-zsh

# Cloud主题
ZSH_THEME="cloud"

# Plugins
plugins=(
  z 
  cp 
  ag
  osx 
  ctag 
  brew 
  rsync 
  vagrant 
  copydir 
  history 
  copyfile 
  colorize 
  web-search
  common-aliases 

  git 
  git-flow 

  ruby 
  rake 
  rails 
  bundler 
  capistrano

  bower 

  yii2 
  composer 
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
export LANG=en_US.UTF-8
