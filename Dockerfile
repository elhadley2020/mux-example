FROM alpine:latest

RUN apk add --no-cache git make musl-dev go
ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH
RUN go get github.com/gorilla/mux
COPY main.go $GOPATH/src/github.com/elhadley2020/mux-example/
RUN cd /go/src/github.com/elhadley2020/mux-example/ && go build
CMD /go/src/github.com/elhadley2020/mux-example/mux-example