#!/bin/bash

 DATA_DIR="/opt/TELOSmainNet-2-dev2.5/"
 CONFIG_DIR="/opt/TELOSmainNet-2-dev2.5"
 NODEOS_BINDIR="/home/telos-2nd-dev2.5/telos/build/programs"

 $CONFIG_DIR/stop-eosio.sh

 echo -e "\n";
 echo -e "DATA_DIR=      $DATA_DIR";
 echo -e "CONFIG_DIR=    $CONFIG_DIR\n";
 echo -e "NODEOS_BINDIR= $NODEOS_BINDIR";
 echo -e "=============> $NODEOS_BINDIR/nodeos/nodeos [TELOS]\n";
 echo -e "========> Starting Nodeos [TELOS]\n";

 $NODEOS_BINDIR/nodeos/nodeos --data-dir $DATA_DIR --config-dir $CONFIG_DIR "$@" > $CONFIG_DIR/stdout-eosio.txt 2> $CONFIG_DIR/stderr-eosio.txt &  echo $! > $CONFIG_DIR/nodeos-eosio.pid
