#!/bin/bash 

# Change to script directory
cd "$(dirname "$0")"

URL=$1

if [ ! $URL ]
then
	echo "URL not defined"
	exit 1
fi

# Admin user token
TOKEN="8Y9OvLjAR0gAY45MZe3...."

# Set the timestamp 3 months ago
FROMDATE="-3 month"
TIME=$(date "+%s%N" -d "$FROMDATE" | cut -b1-13)

# Store list of rooms
wget -O /tmp/temp-$TIME.txt $URL

# Loop through hypha-rooms.txt file
while read ROOMID
do
	echo "Purging: $ROOMID"
	curl -k  -XPOST -d"{\"delete_local_events\": true,\"purge_up_to_ts\": $TIME}" "https://localhost:8448/_synapse/admin/v1/purge_history/$ROOMID?access_token=$TOKEN"
done < /tmp/temp-$TIME.txt

rm /tmp/temp-$TIME.txt

# Purge remote content
echo "Purging remote content"
curl -XPOST -d '{}' "http://localhost:8008/_matrix/client/r0/admin/purge_media_cache?before_ts=$(echo $(($(date -u +%s%N)/1000000)))&access_token=$TOKEN"