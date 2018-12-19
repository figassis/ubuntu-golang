FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y wget git gcc

RUN wget -P /tmp https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz

RUN tar -C /usr/local -xzf /tmp/go1.11.4.linux-amd64.tar.gz
RUN rm /tmp/go1.11.4.linux-amd64.tar.gz

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

WORKDIR $GOPATH
