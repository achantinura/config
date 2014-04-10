if [ $1 ]
then
	if [ $1 = "HDMI" ]
	then 
		killall conky
		xrandr --output HDMI1 --auto
		xrandr --output LVDS1 --off
		herbstclient move_monitor 0 1920x1200+0+0
		conky -q /etc/conkyrc 2>%1 > /dev/null 
	fi
else
	 
	killall conky
	xrandr --output HDMI1 --off
	xrandr --output LVDS1 --auto
	herbstclient move_monitor 0 1366x768+0+0
	conky -q /etc/conkyrc 2>%1 > /dev/null
fi
