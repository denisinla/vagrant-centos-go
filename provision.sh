#!/bin/bash

GO_URL="https://storage.googleapis.com/golang"
GO_FILE="go1.7.3.linux-amd64.tar.gz"

yum install -y wget git-core

cd /tmp
wget --no-check-certificate ${GO_URL}/${GO_FILE}
tar -xzf ${GO_FILE}
mv go /usr/local/go

echo 'export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/dev
export PATH=$PATH:$GOPATH/bin' >> /etc/profile

source /etc/profile

go version
