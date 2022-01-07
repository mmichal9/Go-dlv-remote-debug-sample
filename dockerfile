FROM golang:1.17.5-bullseye as debug


RUN go get github.com/go-delve/delve/cmd/dlv

WORKDIR /go/src/work
COPY ./src /go/src/work/

# Delve:
COPY ./src/bin/dlv.sh /
RUN chmod +x /dlv.sh
ENTRYPOINT [ "/dlv.sh"]
