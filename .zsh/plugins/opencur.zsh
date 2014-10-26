# OSX
# open .
function opencur {
    open .
    zle reset-prompt
}
zle -N opencur
bindkey '^\@' opencur
