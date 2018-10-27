import csv
 import math

 f = open('/opt/TELOSmainNet-2-dev2.5/snapshots/tlos_genesis_snapshot.csv')
 csv_f = csv.reader(f)
 i = 1

 TLOS_LIQ = 0
 TLOS_CPU = 0
 TLOS_NET = 0
 TLOS_TOTAL = 0

 def roundup(a, digits=0):
             n = 10**-digits
             return round(math.ceil(a / n) * n, digits)

 for row in csv_f:
             genesis_account = row[2]
             EOS_PubKey = row[3]
             TLOS_TOTAL = float(row[4])
             TLOS_LIQ = 0.1

             if TLOS_TOTAL > 3 and TLOS_TOTAL <= 11:
                 TLOS_LIQ = 2
             if TLOS_TOTAL > 11:
                 TLOS_LIQ = 10

             remainder = TLOS_TOTAL - TLOS_LIQ
             TLOS_CPU = float('{0:.4f}'.format(remainder / 2))
             TLOS_NET = remainder - TLOS_CPU

             print str(i) +','+ genesis_account + ',' + EOS_PubKey + ',' + '{:.4f}'.format(float(TLOS_TOTAL)) + ',' + '{:.4f}'.format(float(TLOS_CPU)) + ',' + '{:.4f}'.format(float(TLOS_NET)) + ',' + '{:.4f}'.forma$
             i+=1
