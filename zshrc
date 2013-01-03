# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="wedisagree"
ZSH_THEME="juanghurtado"

inpath () {
    ! [ $# -eq 1 ] && echo "usage: inpath <file>" && return 1
    f="$(which "$1" 2>/dev/null)"
    [ -f "$f" ] && return 0
    return 1
}

has_yinst=$(inpath yinst)

prompt () {
    local ready
    while true; do
        echo "Continue? [yn]: "
        read ready
        case $ready
        in
            n*) return 1 ;;
            N*) return 1 ;;
            y*) return 0 ;;
            Y*) return 0 ;;
            *)
        esac
    done
}

# chooses the first argument that matches a file in the path.
choose_first () {
    for i in "$@"; do
        if ! [ -f "$i" ] && inpath "$i"; then
            i="$(which "$i")"
        fi
        if [ -f "$i" ]; then
            echo $i
            break
        fi
    done
}

alias gl="git log --oneline --graph"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

alias grep="grep --color=tty"
alias fgrep="fgrep --color=tty"
alias egrep="egrep --color=tty"


source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# terminal multiplexer, like screen
if inpath tmux && [ -z "$TMUX" ]; then
    if inpath tmx; then
        # https://github.com/brandur/tmux-extra
#        tmx base
    else
        # If the tmx helper isn't installed, fallback to using tmux directly.
        # use echo to trim the wc output on OS X
        if [[ $(echo `tmux ls 2>&1 | grep failed | wc -l`) == "1" ]]; then
#            tmux
        else
#            tmux a
        fi
    fi
fi
