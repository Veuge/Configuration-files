#!/bin/sh

# File to restore the window icon for slack
# Make sure you have `xwininfo` and `xseticon` installed
# Slack installed from .deb file
# Verify the routes and the executable

SLACK_DESKTOP='/usr/share/applications/slack.desktop'
SLACK_ICON='/usr/share/pixmaps/slack.png'

env BAMF_DESKTOP_FILE_HINT=$SLACK_DESKTOP
/usr/bin/slack -u %U & > /dev/null && sleep 10 && app_wid=$(xwininfo -root -tree |sed -e 's/^ *//'|grep -E '0x.*Slack\s{1}\|' | awk '{print $1}') && xseticon -id $app_wid $SLACK_ICON
