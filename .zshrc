export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"

ZSH_THEME_TERM_TITLE_IDLE="%m: %~"

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

  vundle 

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


#if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
#else
#  export EDITOR='mvim'
#fi

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export LANG=en_US.UTF-8
