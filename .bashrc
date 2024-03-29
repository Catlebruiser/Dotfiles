#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="[\[\e[33m\]\u\[\e[m\]\[\e[94m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]\[\e[36m\] \W\[\e[m\]] \\$ "

set -o vi
bind C-l:clear-screen
shopt -s autocd

alias ls='ls --color=auto'
alias rm='rm -i'
alias scripts='cd .local/bin/scripts/'
alias arbeid='cd ~/Google_Drive/Arbeid/produksjoner'
alias skole='cd ~/Google_Drive/DDSKS/master/første_år/andre_semester'
alias sdn='sudo reboot now'
alias bib='vim ~/documents/latex/bib/bibliografi.bib'
alias trash='cd ~/.local/share/vifm/Trash'

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
