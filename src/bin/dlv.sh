#!/bin/sh
cd /go/src/work/cmd/mapper

# dlv debug used to compile and attach
dlv debug --headless --log -l 0.0.0.0:2345 --api-version=2

# dlv exec used to run and attach to binary
# cd /go/src/work/cmd/mapper
# go build -gcflags="all=-N -l"
# dlv exec ./main --headless --log -l 0.0.0.0:2345 --api-version=2