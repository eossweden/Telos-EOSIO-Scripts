#!/bin/bash

 CONFIG_DIR="/opt/TELOSmainNet-2-dev2.5"

 echo -e "\n";
 echo -e "CONFIG_DIR=    $CONFIG_DIR";
 echo -e "========> Stoping Nodeos [TELOS]\n";

  if [ -f $CONFIG_DIR"/nodeos-eosio.pid" ]; then
         pid=`cat $CONFIG_DIR"/nodeos-eosio.pid"`
         echo $pid
         kill $pid
         rm -r $CONFIG_DIR"/nodeos-eosio.pid"

         echo -ne "Stoping Nodeos"

         while true; do
             [ ! -d "/proc/$pid/fd" ] && break
             echo -ne "."
             sleep 1
         done
         echo -ne "\rNodeos Stopped.    \n"
     fi
