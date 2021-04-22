#!/bin/sh
env BAMF_DESKTOP_FILE_HINT=/usr/share/applications/slack.desktop
/usr/bin/slack -u %U & > /dev/null && sleep 10 && app_wid=$(xwininfo -root -tree |sed -e 's/^ *//'|grep -E '0x.*Slack\s{1}\|' | awk '{print $1}') && xseticon -id $app_wid /usr/share/pixmaps/slack.png
