#!/bin/bash
# This is DRAFT script. Please use it with care and in accordance with your working environment.
# You may have to modify it based on your snapshot

NODE_SCRIPT_DIR=/opt/TELOSmainNet-2-dev2.5/scr-snapshots
NODE_HOST=/home/telos-2nd-dev2.5/telos/build/programs

API_HOST="127.0.0.1"
API_PORT="7001"
WALLET_HOST="127.0.0.1"
WALLET_PORT="8999"

COUNTER=1
for line in $(tail -n +1 telos_snapshot_generatecsv); do
         EOS_ACCOUNT=$(echo $line | tr "," "\n" | head -2 | tail -1)
         BALANCE=$(echo $line | tr "," "\n" | head -4 | tail -1)
         EOS_KEY=$(echo $line | tr "," "\n" | head -3 | tail -1)
         LIQ=$(echo $line | tr "," "\n" | head -7 | tail -1)
         CPU=$(echo $line | tr "," "\n" | head -5 | tail -1)
         BDW=$(echo $line | tr "," "\n" | head -6 | tail -1)

         $NODE_HOST/teclos/teclos --url http://$API_HOST:$API_PORT system newaccount eosio -x 100 --transfer --stake-net "$BDW TLOS"  --stake-cpu "$CPU TLOS" --buy-ram-kbytes 4 $EOS_ACCOUNT $EOS_KEY
         $NODE_HOST/teclos/teclos --url http://$API_HOST:$API_PORT transfer eosio $EOS_ACCOUNT "$LIQ TLOS"  "Telos Liquid tokens from genesis balance. You are Welcome to Telos echo system!"

         COUNTER=$[$COUNTER +1]
done
