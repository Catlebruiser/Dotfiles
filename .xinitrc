#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

#if [ -f $sysresources ]; then
 #   xrdb -merge $sysresources
#fi

#if [ -f $sysmodmap ]; then
 #   xmodmap $sysmodmap
#fi

#if [ -f "$userresources" ]; then
   #xrdb -merge "$userresources"

#fi

#if [ -f "$usermodmap" ]; then
#    xmodmap "$usermodmap"
#fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

~/.fehbg &
slstatus &
sxhkd &
unclutter &
xcompmgr &
dunst &
mpd &
#syncthing &
xrdb ~/build/st/.Xdefaults &

setxkbmap && setxkbmap -option caps:super && killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape' &
xmodmap -e 'keycode 135 = Super_R' &

xinput disable SynPS/2\ Synaptics\ TouchPad &

exec dwm
