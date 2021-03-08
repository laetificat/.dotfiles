# Go configuration
export GOPATH="/Users/Kevin/go"
export GOPRIVATE="bitbucket.org/aanzeeonline"

# Set program paths
path=('/usr/local/sbin' $path)
path=('/usr/local/bin' $path)
path=('/usr/local/go/bin' $path)
path=('/usr/local/opt/gettext/bin' $path)
path=('/usr/local/opt/sqlite/bin/sqlite' $path)
path=('/usr/local/opt/python/libexec/bin' $path)
path=('/usr/local/opt/ncurses/bin' $path)
path=('/usr/local/opt/ruby/bin' $path)

path+=('/Users/Kevin/go/bin')
path+=('/Users/Kevin/bin')

export PATH

# Replace some default variables
export EDITOR="nvim"

# Shortcuts to locations
export PROJECTS="$HOME/Documents/Projects"
export AANZEEPROJECTS="$HOME/Documents/Projects/bitbucket.org/aanzeeonline"

# Aliases
alias python="python3"
alias vi="nvim"
alias vim="nvim"

# Plugin configuration
#
# Syntax highlight
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestion
autoload compinit && compinit
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Git prompt
source ~/.zsh/plugins/zsh-git-prompt/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
setopt PROMPT_SUBST ; PS1='%n@%m %c$(__git_ps1 " (%s)"): '


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
