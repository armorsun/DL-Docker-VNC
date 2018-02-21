#!/bin/bash
jupyter notebook & 

#setting up vncserver
if [[ -e /tmp/.X0-lock && -e /tmp/.X11-unix/X0 ]]; then
	rm -f /tmp/.X0-lock /tmp/.X11-unix/X0
fi

if [[ -e /home/ubuntu/.vnc/*.pid && -e /home/ubuntu/.vnc/*.log ]]; then
	rm -f /home/ubuntu/.vnc/*.pid /home/ubuntu/.vnc/*.log
fi

xdg-mime default nemo.desktop inode/directory

vncserver $1 $2 :0 && tail -f /home/ubuntu/.vnc/*.log 
