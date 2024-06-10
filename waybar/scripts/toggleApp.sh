#!/bin/sh

#check if app is running
if pgrep "$1" >/dev/null && $1 
then
	#get pid and kill process
	ps -ef | grep "$1" | grep -v grep | awk '{print $2}' | xargs kill
else
	$1
fi
