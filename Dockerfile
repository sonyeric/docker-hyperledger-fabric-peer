# Deprecated soon, do not use this.
# Dockerfile for Hyperledger peer image with consensus pbft. This follows hyperledger
# image and update the consensus config file. 
# Data is stored under /var/hyperledger/db and /var/hyperledger/production

FROM yeasy/hyperledger:latest
MAINTAINER Baohua Yang

RUN cp $GOPATH/src/github.com/hyperledger/fabric/consensus/pbft/config.yaml $GOPATH/bin

CMD ["peer","node","start"]
