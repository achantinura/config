xrandr --output HDMI-0 --auto --rotate left #links
xrandr --output DisplayPort-0 --auto --rotate left #mitte
# for leaving this monitor horizontal comment next line
xrandr --output DVI-0 --auto --rotate left #ganz rechts
  
xrandr --output DisplayPort-0 --auto --right-of HDMI-0
xrandr --output DVI-0 --auto --right-of DisplayPort-0
#herbstclient move_monitor 0 2400x1920+0+0
#xrandr --output DVI-0 --auto --pos 2400x300 #ganz rechts
#herbstclient add_monitor 1920x1200+2400+300 9 second
#herbstclient lock_tag second

herbstclient move_monitor 0 3600x1920+0+0
