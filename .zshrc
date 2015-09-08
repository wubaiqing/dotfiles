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
  phpunit  
)

source $ZSH/oh-my-zsh.sh

if [ ! -f "~/.aliases" ]; then
  source ~/.aliases;
fi

export EDITOR='vim'
export LANG=en_US.UTF-8
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
export PATH="/Users/wubaiqing/.composer/vendor/bin:$PATH"

export ANDROID_HOME='/data/55/adt-bundle-mac-x86_64-20140702/sdk/'
export ANDROID_PLATFORM_TOOLS='/data/55/adt-bundle-mac-x86_64-20140702/sdk/platform-tools/'
export ANDROID_TOOLS='/data/55/adt-bundle-mac-x86_64-20140702/sdk/tools/'
