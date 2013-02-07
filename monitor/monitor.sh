  

xrandr --output DFP1 --auto --rotate left
xrandr --output DFP5 --auto --rotate left
xrandr --output DFP6 --auto --rotate left
  
xrandr --output DFP5 --auto --right-of DFP1
xrandr --output DFP6 --auto --right-of DFP5
herbstclient move_monitor 0 3150x1680+0+0
