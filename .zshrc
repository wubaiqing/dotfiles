export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"

# Plugins
plugins=(
  z 
  cp 
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

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

