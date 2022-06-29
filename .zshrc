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
path=('/usr/local/opt/php@7.4/bin' $path)
path=('/usr/local/opt/php@7.4/sbin' $path)

path+=('/Users/Kevin/go/bin')
path+=('/Users/Kevin/bin')
path+=('/Users/kevin/Library/pnpm')

export PATH

# Replace some default variables
export EDITOR="nvim"

# Shortcuts to locations
export PROJECTS="$HOME/Documents/Projects"
export AANZEEPROJECTS="$HOME/Documents/Projects/bitbucket.org/aanzeeonline"
export PNPM_HOME="/Users/kevin/Library/pnpm"

# Aliases
alias python="python3"
alias vi="nvim"
alias vim="nvim"
alias d="docker"
alias k="kubectl"
alias dc="docker-compose"
alias ll="ls -l"

# Plugin configuration
#
# Syntax highlight
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load autocompletions
fpath=(~/.zsh/completion $fpath)
autoload compinit && compinit

# Autosuggestion
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Git prompt
source ~/.zsh/plugins/zsh-git-prompt/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
setopt PROMPT_SUBST ; PS1='%n@%m %c$(__git_ps1 " (%s)"): '

# Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fast Node.js Manager
eval "$(fnm env --use-on-cd)"

# Starship shell
eval "$(starship init zsh)"
