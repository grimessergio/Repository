#!/bin/sh
if [ ! -f UUID ]; then
  UUID="47d979dc-cd0b-4886-b6cd-926a4d07a001"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

