#! /bin/bash
echo "Client connection:"
chmod 777 ../resources/bin/nc
ip=$1
port=$2
echo "Connecting with $ip:$port..."
coproc ../resources/bin/nc $ip $port
echo "Connection finished"