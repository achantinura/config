#! /bin/bash

#kill all running dzen2
killall dzen2 2> /dev/null
killall panel.sh 2> /dev/null

#padding
herbstclient pad 0 7

# dzen stuff
FG='white'
BG='black'
FONT="-*-*-*-*-*-*-10-*-*-*-*-*-*-*"
WIDTH=3600 #hier Breite des Monitors in px eintragen

#the actual panel
addpanelcontent()
{
	panelcontent="$panelcontent $@ |||"
}

{
while true; do
		panelcontent="||| "
		addpanelcontent $(date)
		addpanelcontent $(herbstclient tag_status)
		echo "$panelcontent"
		sleep 1
done
} 2> /dev/null | dzen2 -ta c -y 0 -x 0 -h 11 -w $WIDTH -fg $FG -bg $BG -fn $FONT &
