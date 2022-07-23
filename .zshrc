# Load antigen plugin manager
source ~/.dotfiles/antigen.zsh

# Load plugins
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Set program paths
path+=('/usr/local/sbin')
path+=('/usr/local/bin')
path+=('/usr/local/go/bin')
path+=('/usr/local/opt/gettext/bin')
path+=('/usr/local/opt/sqlite/bin/sqlite')
path+=('/usr/local/opt/python/libexec/bin')
path+=('/usr/local/opt/ncurses/bin')
path+=('/usr/local/opt/ruby/bin')
path+=('/usr/local/opt/php@7.4/bin')
path+=('/usr/local/opt/php@7.4/sbin')
path+=("$HOME/go/bin")
path+=("$HOME/bin")
path+=("$HOME/Library/pnpm")
path+=("/opt/homebrew/bin")
export PATH

# Go configuration
export GOPATH="$HOME/go"
export GOPRIVATE="bitbucket.org/aanzeeonline"

# Replace some default variables
export EDITOR="nvim"

# Shortcuts to locations
export CODE="$HOME/Code/Personal"
export WORK="$HOME/Code/Work"

# PNPM config
export PNPM_HOME="$HOME/Library/pnpm"

# lf's bookmark path
export LF_BOOKMARK_PATH="$HOME/.config/lf/bookmarks/"

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
# Load autocompletions
fpath=(~/.zsh/completion $fpath)
autoload compinit && compinit

# Autosuggestion
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fast Node.js Manager
eval "$(fnm env --use-on-cd)"

# Starship shell
eval "$(starship init zsh)"

