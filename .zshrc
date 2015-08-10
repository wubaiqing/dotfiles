export ZSH=/Users/wubaiqing/.oh-my-zsh
ZSH_THEME="cloud"
#ZSH_THEME="gitster"

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


# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

