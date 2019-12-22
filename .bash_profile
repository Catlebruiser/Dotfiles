#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


export TERMINAL="st"
export EDITOR="vim"
export FILE="vifm"
export BROWSER="firefox"
export READER="zathura"
export VIEWER="zathura"
export PATH="$(du $HOME/.local/bin/scripts | cut -f2 | tr '\n' ':')$PATH"
export PG_OF_PATH=/home/eirik/build/OpenFrameworks

PATH=$PATH:/home/eirik/.gem/ruby/2.6.0/bin
PATH=$PATH:/home/eirik/.local/bin/scripts

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm >dev/null && exec startx
