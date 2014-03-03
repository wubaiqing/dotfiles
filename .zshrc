ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
plugins=(git osx brew cp git-flow github laravel python rsync themes vundle virtualenv)

export PATH="$HOME/.bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
if test -d $HOME/.dircolors ; then
	eval `dircolors -b $HOME/.dircolors/dircolors.256dark`
	alias ls='ls --color -hF'
fi

userComplete()
{
	case $BUFFER in
	"" )                          # 空行填入 "cd "
		BUFFER="cd "
		zle end-of-line
		zle expand-or-complete
	;;
	"cd --" )                  # "cd --" 替换为 "cd +"
		BUFFER="cd +"
		zle end-of-line
		zle expand-or-complete
	;;
	"cd +-" )                  # "cd +-" 替换为 "cd -"
		BUFFER="cd -"
		zle end-of-line
		zle expand-or-complete
	;;
	* )
		zle expand-or-complete
	;;
	esac
}
zle -N userComplete
bindkey "\t" userComplete

source $HOME/.aliases
source /usr/local/Cellar/z/1.8/etc/profile.d/z.sh
source $ZSH/oh-my-zsh.sh

