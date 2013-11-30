#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
setxkbmap -layout gb
numlockx &
unclutter &
udiskie &
exec awesome
