#!/bin/bash
# pm2 stopall
apt-get install jq -y
echo "Running pm2 processes here ======>"
process=`pm2 jlist|jq 'length'`
echo "Running pm2 processes ======> " $process
if [ $process != "0" ]
 then
    echo "Stoping all running pm2 process"
    pm2 stop all
fi
