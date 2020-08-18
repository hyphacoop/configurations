# Hypha Co-op: matrix-purge-roomlist

A list of rooms in hypha-rooms.txt which is called by [this script](https://github.com/hyphacoop/configurations/tree/master/tomeshnet/purge-room-script/purge-matrix-room.sh

A cronjob runs the script each week which then purges messages in the rooms that matches the room ID.

crontab:
`0 3 * * 7 /root/bin/purge-matrix-room.sh https://raw.githubusercontent.com/hyphacoop/configurations/master/hyphacoop/matrix-purge-roomlist/hypha-rooms.txt`
