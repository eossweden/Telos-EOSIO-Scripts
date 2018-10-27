#!/bin/bash

 NODE_HOST="127.0.0.1"
 NODE_PORT="7001"

 WALLET_HOST="127.0.0.1"
 WALLET_PORT="8999"

 NODEOS_BINDIR="/home/telos-2nd-dev2.5/telos/build/programs"

 echo -e "========================================================================================";
 echo -e "--url http://$NODE_HOST:$NODE_PORT";
 echo -e "--wallet-url http://$WALLET_HOST:$WALLET_PORT\n";
 echo -e "NODEOS_BINDIR= $NODEOS_BINDIR";
 echo -e "=============> $NODEOS_BINDIR/teclos/teclos [TELOS]";
 echo -e "========================================================================================\n";

 $NODEOS_BINDIR/teclos/teclos --url http://$NODE_HOST:$NODE_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT "$@"
