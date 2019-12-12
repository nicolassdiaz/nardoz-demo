FROM golang:1.12.1-alpine3.9
ENV GOPATH="/go"
RUN ["mkdir", "-p", "/go/src/nardoz/app/demo"]
COPY * /go/src/nardoz/app/demo/
WORKDIR /go/src/nardoz/app/demo
RUN ["go", "build", "-o", "demo"]
CMD ["./demo"]
