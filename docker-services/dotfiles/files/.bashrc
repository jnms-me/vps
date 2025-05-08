export EDITOR='vim'

alias nohist="export HISTFILE=/dev/null"

alias la="ls -lA"
alias ll="ls -lh"
alias l="ls -lAh"

alias v="vim"
alias sv="sudo vim"

alias rcp="rsync --progress --inplace --recursive --verbose"

alias d="docker"
alias dc="docker compose"
alias dcps="docker compose ps -a | less -S"
alias run-qemu-user-static="docker run --rm --privileged multiarch/qemu-user-static --reset -p yes"

alias py="python"
alias ipy="ipython"

function loop { while true; do $@; done }
