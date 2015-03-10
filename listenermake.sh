if test $# -ne 3; then
    echo "Usage: listenermake.sh <extension path> <key path> <port number>"
    exit 1
fi

ext=$1
key=$2
port=$3

echo "var hookshot = require('hookshot');" > webhook_listener.js

echo "hookshot('refs/heads/master'," >> webhook_listener.js
echo "'git fetch origin && git checkout origin/master && bash crxmake.sh $ext $key')" >> webhook_listener.js

echo ".listen($port);" >> webhook_listener.js