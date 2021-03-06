#
# my aliases
#

alias c='clear'
alias ls='ls -F --group-directories-first --color=auto'
alias ll='ls -lh'
alias la='ls -lah'

alias less='less -FRSX'

alias -g ...='../..'
alias -g ....='../../..'
alias -g H='| head'
alias -g T='| tail'
alias -g L='| less'

alias shoot="scrot -s /tmp/shot.png -e 'imgurbash /tmp/shot.png && rm /tmp/shot.png'"

alias dj='django-admin.py'

alias calc='bc -l <<<'

function extract () {
    if [[ -f "$1" ]]; then
        case "$1" in
            *.tbz2 | *.tar.bz2) tar -xvjf  "$1"     ;;
            *.txz | *.tar.xz)   tar -xvJf  "$1"     ;;
            *.tgz | *.tar.gz)   tar -xvzf  "$1"     ;;
            *.tar | *.cbt)      tar -xvf   "$1"     ;;
            *.zip | *.cbz)      unzip      "$1"     ;;
            *.rar | *.cbr)      unrar x    "$1"     ;;
            *.arj)              unarj x    "$1"     ;;
            *.ace)              unace x    "$1"     ;;
            *.bz2)              bunzip2    "$1"     ;;
            *.xz)               unxz       "$1"     ;;
            *.gz)               gunzip     "$1"     ;;
            *.7z)               7z x       "$1"     ;;
            *.Z)                uncompress "$1"     ;;
            *.gpg)       gpg2 -d "$1" | tar -xvzf - ;;
            *) echo "Error: failed to extract $1" ;;
        esac
    else
        echo "Error: $1 is not a valid file for extraction"
    fi
}

