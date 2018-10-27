import json
 import csv
 import os

 f = open('/opt/TELOSmainNet-2-dev2.5/scr-snapshots/telos_snapshot_generatecsv_JT.csv')
 csv_f = csv.reader(f)

 NODE_HOST = "/home/telos-sources-dev2.5/telos/build/programs"

 i=1

 for row in csv_f:
         EOS_account = row[1]
         EOS_key = row[2]
         total = row[3]
         CPU = row[4]
         NET = row [5]
         LIQ = row[6]
         create_Account = NODE_HOST + "/teclos/teclos --url http://127.0.0.1:9001 system newaccount -x 100 --transfer --stake-net \"" + NET + " TLOS\" --stake-cpu \"" + CPU + " TLOS\" --buy-ram-kbytes 4 eosio " + EOS_account + " " + EOS_key
         transfer_Balance = NODE_HOST + "/teclos/teclos --url http://127.0.0.1:9001 transfer eosio " + EOS_account + " \"" + LIQ + " TLOS\" \"Telos Liquid tokens from genesis balance. You are Welcome to Telos echo system!\""
         os.system(create_Account)
         os.system(transfer_Balance)
         i+=1
