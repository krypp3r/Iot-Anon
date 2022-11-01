#! /bin/bash
port=$1
chmod 777 ../resources/bin/nc
echo "Server started in background"
coproc ../resources/bin/nc -lvp $port -W 100