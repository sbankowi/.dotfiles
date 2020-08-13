# Set terminal
#export TERM=xterm-256color
export TERM=screen-256color
eval `dircolors ~/.dir_colors`

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt="(%3c) %#%s "
#prompt="[$(print '%{\e[1;31m%}%n%{\e[0m%}') @ %M](%3c) %#%s "
#prompt adam1

setopt histignorealldups sharehistory

# vi!
bindkey -v

# Keep 2048 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=2048
SAVEHIST=2048
HISTFILE=~/.zsh_history
HISTIGNORE="(ls|[bf]g|exit|clear)"

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# setopts


# aliases
alias ls='ls --color'
alias grep='grep --color'

# addons
# auto-suggestions
# https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=14"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=24
export ZSH_AUTOSUGGEST_USE_ASYNC=1
bindkey '^ ' autosuggest-execute
#

