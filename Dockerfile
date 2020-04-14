FROM alpine
RUN apk add go
ENV GOROOT /root/go
ENV PATH $GOPATH/bin:$PATH
RUN apk add git
RUN go get github.com/gorilla/mux
COPY . /root/go/src/github.com/elhadley2020/mux-example
RUN go build /root/go/src/github.com/elhadley2020/mux-example
CMD go /root/go/src/github.com/elhadley2020/mux-example/main.go