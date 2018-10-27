#!/bin/bash

 NODEOS_BINDIR="/home/telos-2nd-dev2.5/telos/build/programs"
 API_HOST="127.0.0.1"
 API_PORT="7001"
 WALLET_HOST="127.0.0.1"
 WALLET_PORT="8999"

 echo -e "NODEOS_BINDIR=            $NODEOS_BINDIR";
 echo -e "API_HOST:API_PORT=        --url http://$API_HOST:$API_PORT";
 echo -e "WALLET_HOST:WALLET_PORT=  --wallet-url http://$WALLET_HOST:$WALLET_PORT";

 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.bpay EOS7KwfFboVuEgWK1SFvuWDHuayh2dwtm46aBzjdmgobq6ZBDC7ND EOS5nVtdPkVNvLWzkZimx54mcSPPpoHS3Gzad7fgVBppFNnCWVvHq "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.vpay EOS8XLwMcZNGBi8xfKbDNG9a9zbqZAcMSNBELayxeiomkJP9fVq1D EOS5WicbaHogArzCdwp3B8L39QB2tLJgEW3nWzNA1fiPZyCnqwNF4 "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.msig EOS5m6ssZQSViqas5uQYCCs53fvvqfL8VqSY7t9Q5pfNHCFfvs1jC EOS8h2gNeHvFtSoA6Ca8kZqniKhvDoqCQKMuQD6mQRgjawUAcQ3Ve "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.names EOS5vDinecLtzKQ9J7UVcXLKmHSAgFk2xfWJHWNpk3HX9ZmnJYK3B EOS7e9GEAywdRKVCsA5HMrGxJ8dKo4ExnkHP98owA717jvb68zKTE "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.ram EOS6v5eqPWnsffDyaRn69fxbp1a3BthKk24v5f96nDnYcD9y44Yya EOS6ksMsgEq2PqGuqoVkBNNmtsk7DpoTH7W3dPC13mcqoDiv9JDmJ "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.ramfee EOS5Cwxh9mEX1UQV4Mg31np1ygBhyVqe8X78NE8W6aVakBT17LSe6 EOS6knKVSYWCtx6VQQjcSespnLauKJn24SMqGFd9e4Wzdj15Er4he "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.saving EOS7UVQWMCy2zvJGKwXtow5NKAjhAsYMvsqJjEGScXBpA8VHtoSWK EOS6NpQb7og4aa7p2spdQv7zS16R5ZkgAzYDGyG17pQjJR4ok51ij "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.stake EOS7yZoHN5xXhkinsvHFyEh3RHHgXrSRhkhYgzc9nwcvAXwz6Wy9j EOS8JGSk32jQkAxcsqmtnwXJur1oG9TeVfCAQy2mHatfRjwWe4J9H "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.token EOS5bvkBhwj5Kjmkd7bmME5xcTqF9YUryZLNE935SmZ5PXvnBTJ9T EOS83tPgkC96qPELLH1YCpkbCTg7mE9q2WmvNPWSui4sgJYqDnLyV "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.trail EOS5owDXEHqJonCqrSEukdCujzdG6L8czyxF3F26E839T2bnPnZ49 EOS5RzQqBbB5bHmeS5Bisu36kkYS8cjZXvXhbPdaC8mUM9rn1jypa "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.amend EOS55kGYcmBbEcSdCJXihsu6J4h5JzDodDzareJTMmDoLj2vfNybj EOS5kC4NDZAu9QesorTpTLyYWTNAvQWzXjzrHyivxg31RbT2wSYJP "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.work EOS57PtZT85doEVDVsb2X95KZytUCz1uumQAk4dzLiQq1gtidk5Yb EOS6WWBp6vo3mzbLBk2rpU3RPKj47cx1HdfVjurupyJyuxEpZu8nZ "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.arb EOS8hms76jy6sEmrv41yxzawwXfRYp5yYssZAMziHQ1xE84Vh5YCP EOS5EBMrYE8PfeAbP4HwmcPvb88rZs9ocqYJBoXyA3vYkpYWZQKzg "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.exrsrv EOS7HAfF2LaZJUGicYwCGKc1UDAr4s4RaJtEWX2yweQKA4URqLvyg EOS5D9KkrxPQbGjknnjCg2z9uuc849Y5URw7jaBey4qKWNAnxHmDW "$@"
 $NODEOS_BINDIR/teclos/teclos --url http://$API_HOST:$API_PORT --wallet-url http://$WALLET_HOST:$WALLET_PORT create account eosio eosio.bpadj EOS7H32nqssDKPsNQKsTwQhvDaRkGTfGLhepv1ZdMfFSvHVKR6FYn EOS6aD3XvirGZpPR8M4SGY3hkR3bAuzMKTUEFSAa3U1ABcRMhKHmK "$@"
