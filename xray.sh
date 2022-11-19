#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2f69a0a9-e9d0-4611-880e-325b65559e78"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

