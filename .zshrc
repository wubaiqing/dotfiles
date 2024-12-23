# Init
export ZSH="$HOME/.oh-my-zsh"

# Plugins
plugins=(git git-flow git-extras autojump zsh-completions zsh-autosuggestions fast-syntax-highlighting yarn)

# Alias
alias cdtmp='cd `mktemp -d /tmp/wubaiqing-XXXXXX`'

# Path
source $ZSH/oh-my-zsh.sh
export PATH=/opt/homebrew/bin:$PATH

# Nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Fzf
source <(fzf --zsh)

# Pnpm
export PNPM_HOME="/Users/yiche/Library/pnpm"

# startship - https://starship.rs/
eval "$(starship init zsh)"
