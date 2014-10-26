# masami
alias ls='ls -GF'
alias la='ls -AF'
alias ll='ls -lF'

alias grep='grep --color'
function findstr() {
    find "$1" -type f -print0 | xargs -0 grep -n "$2"
}

alias javac='javac -J-Dfile.encoding=UTF8'
alias emacs='/usr/local/bin/emacs'
alias swift='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift'

# Env Path
export GOROOT='/usr/local/Cellar/go/1.3.1/libexec'
export GOPATH='/Users/masami/.golang'

export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

#PROMPT="%B%{^[[31m%}%/#%{^[[m%}%b "
PROMPT="[%n@%m]$ "
PROMPT2="[%n@%m]$ "
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

# vim mode
# bindkey -v

# cd $home
function cdhome() {
    echo
    cd
    zle reset-prompt
}
#zle -N cdhome
#bindkey '\~' cdhome

# cd ..
function cdup() {
    echo
    cd ..
    zle reset-prompt
}
#zle -N cdup
#bindkey '\^' cdup

# open .
function opencur() {
    open .
    zle reset-prompt
}
zle -N opencur
bindkey '^\@' opencur
