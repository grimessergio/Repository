#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1b772182-168b-4e04-9705-e4dea3443a82"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

