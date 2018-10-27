#!/bin/bash

 NODEOS_BINDIR="/home/telos-2nd-dev2.5/telos/build/programs"
 CONTRACTS_DIR="/home/telos-2nd-dev2.5/telos/build/contracts"
 API_HOST="127.0.0.1"
 API_PORT="7001"
 WALLET_HOST="127.0.0.1"
 WALLET_PORT="8999"

 echo -e "NODEOS_BINDIR=            $NODEOS_BINDIR";
 echo -e "API_HOST:API_PORT=        --url http://$API_HOST:$API_PORT";
 echo -e "WALLET_HOST:WALLET_PORT=  --wallet-url http://$WALLET_HOST:$WALLET_PORT";

$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT set contract eosio.token $CONTRACTS_DIR/eosio.token
$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT set contract eosio.msig $CONTRACTS_DIR/eosio.msig -p eosio.msig

$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT push action eosio.token create '[ "eosio", "10000000000.0000 TLOS", 0, 0, 0]' -p eosio.token
$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT push action eosio.token issue '[ "eosio", "178473249.3124 TLOS", "Genesis Snapshot" ]' -p eosio
$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT push action eosio.token issue '[ "eosio", "6000000.0000 TLOS", "Telos Founders Reward Pool Issue" ]' -p eosio
$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT push action eosio.token issue '[ "eosio", "1000000.0000 TLOS", "Telos Community Reward Pool Issue" ]' -p eosio
$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT push action eosio.token issue '[ "eosio", "6000000.0000 TLOS", "Telos Foundation Issue" ]' -p eosio
$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT push action eosio.token issue '[ "eosio", "140279973.0000 TLOS", "Exchange Pool" ]' -p eosio
$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT push action eosio.token issue '[ "eosio", "25000.0000 TLOS", "Genesis Account RAM Issue" ]' -p eosio

$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT set contract eosio $CONTRACTS_DIR/eosio.system -p eosio

$NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT push action eosio setpriv '["eosio.msig", 1]' -p eosio@active
