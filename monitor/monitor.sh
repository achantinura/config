  

xrandr --output HDMI-0 --auto --rotate left #links
xrandr --output DisplayPort-0 --auto --rotate left #mitte
xrandr --output DVI-0 --auto --rotate left #ganz rechts
  
xrandr --output DisplayPort-0 --auto --right-of HDMI-0
xrandr --output DVI-0 --auto --right-of DisplayPort-0
herbstclient move_monitor 0 3600x1920+0+0
