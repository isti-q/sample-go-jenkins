FROM golang:alpine

RUN apk update && apk add --no-cache git

WORKDIR /app

COPY . .

RUN go mod tidy

RUN go test

RUN go build -o sample-go-jenkins

ENTRYPOINT ["/app/sample-go-jenkins"]