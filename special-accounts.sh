#!/bin/bash

 NODEHOST="127.0.0.1"
 NODEPORT="7001"

 WALLETHOST="127.0.0.1"
 WALLETPORT="8999"

 NODEOS_BINDIR="/home/telos-2nd-dev2.5/telos/build/programs"

 echo -e "========================================================================================";
 echo -e "--url http://$NODEHOST:$NODEPORT";
 echo -e "--wallet-url http://$WALLETHOST:$WALLETPORT\n";
 echo -e "NODEOS_BINDIR= $NODEOS_BINDIR";
 echo -e "=============> $NODEOS_BINDIR/teclos/teclos [TELOS]";
 echo -e "========================================================================================\n";

$NODEOS_BINDIR/teclos/teclos --url http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT system newaccount -x 100 --transfer --stake-net "2999995 TLOS" --stake-cpu "2999995 TLOS" --buy-ram-kbytes 4 eosio tf EOS5FYkKH4x2UoK1Fu48s9Zz7gDbxksWBhcmyrDgR5aS9BkvQvH2f "$@"
$NODEOS_BINDIR/teclos/teclos --url http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT transfer eosio tf "10 TLOS" "Let's make JERRY Happy. He is a GREAT Man"
$NODEOS_BINDIR/teclos/teclos --url http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT system newaccount -x 100 --transfer --stake-net "2999995 TLOS" --stake-cpu "2999995 TLOS" --buy-ram-kbytes 4 eosio tf.frp EOS5FYkKH4x2UoK1Fu48s9Zz7gDbxksWBhcmyrDgR5aS9BkvQvH2f "$@"
$NODEOS_BINDIR/teclos/teclos --url http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT transfer eosio tf.frp "10 TLOS" "Let's make JERRY Happy. He is a GREAT Man"
$NODEOS_BINDIR/teclos/teclos --url http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT system newaccount -x 100 --transfer --stake-net "499995 TLOS" --stake-cpu "499995 TLOS" --buy-ram-kbytes 4 eosio tf.crp EOS5FYkKH4x2UoK1Fu48s9Zz7gDbxksWBhcmyrDgR5aS9BkvQvH2f "$@"
$NODEOS_BINDIR/teclos/teclos --url http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT transfer eosio tf.crp "10 TLOS" "Let's make JERRY Happy. He is a GREAT Man"
$NODEOS_BINDIR/teclos/teclos --url http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT system newaccount -x 100 --transfer --stake-net "70139981.5 TLOS" --stake-cpu "70139981.5 TLOS" --buy-ram-kbytes 4 eosio tf.exrsrv EOS5FYkKH4x2UoK1Fu48s9Zz7gDbxksWBhcmyrDgR5aS9BkvQvH2f "$@"
$NODEOS_BINDIR/teclos/teclos --url http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT transfer eosio tf.exrsrv "10 TLOS" "Let's make JERRY
