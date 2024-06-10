#!/bin/sh

#check clients for nmtui
if hyprctl clients | grep -q 'title: nmtui'
then	
	#if not found kill pid
	hyprctl clients | grep -A3 'title: nmtui' | grep 'pid' | awk '{print $2}' | xargs kill
else
	kitty --class Float -e nmtui
fi
