#!/bin/sh

. setenv.sh

docker-compose up -d

docker exec -it dockercompose_vp_1 bash

peer chaincode deploy -p github.com/hyperledger/fabric/examples/chaincode/go/map -c '{"Args": ["init","a", "100"]}'

CC_ID="1bea54ed60be3a91c700ce69349a2a432ff425b73290f09a9c9b116f5c4a95d379494fcf608752e6589f616afa93543f560220222e24850b64e9dcc009ab1119"

peer chaincode invoke -u jim -n ${CC_ID} -c '{"Args": ["put", "name","liuruichao"]}'

peer chaincode query -u jim -n ${CC_ID} -c '{"Args": ["keys"]}'

peer chaincode query -u jim -n ${CC_ID} -c '{"Args": ["get", "name"]}'

docker-compose down
