Muh config files
![image](https://github.com/Beese-Churger/Hyprland-Dots/assets/88885334/720a2d59-610f-4d49-b2c0-1c3e4221a88a)

Dependencies:
- waybar
- swaync
- pavucontrol
- brightnessctl

# Alacritty configuration

Change the following
```shell
#!/bin/sh

#check clients for nmtui
if hyprctl clients | grep -q 'title: nmtui'
then	
	#if not found kill pid
	hyprctl clients | grep -A3 'title: nmtui' | grep 'pid' | awk '{print $2}' | xargs kill
else
	alacritty --title "nmtui" --class Float -e nmtui
fi
```
