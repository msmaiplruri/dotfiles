# masami
alias ls='ls -GF'
alias la='ls -AF'
alias ll='ls -lF'
alias grep='grep --color'
alias javac='javac -J-Dfile.encoding=UTF8'

# plugins
for fn in ~/.zsh/plugins/*.zsh; do
    source $fn
done

autoload colors
colors
#PROMPT="%B%{^[[31m%}%/#%{^[[m%}%b "
#PROMPT="[%n@%m]$ "
PROMPT="%{${fg[green]}%}%n@%m %{${fg[blue]}%}$%{${reset_color}%} "
PROMPT2=${PROMPT}
SPROMPT="%r is correct? [n,y,a,e]: "
RPROMPT='[%~]'

autoload -U compinit

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export HISTFILESIZE=2000
setopt hist_ignore_dups
setopt hist_ignore_space
setopt EXTENDED_HISTORY
setopt share_history

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed

# emacs mode
bindkey -e
