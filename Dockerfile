FROM golang:1.23 AS builder

RUN go mod download

RUN go build -o server main.go

EXPOSE 8080

CMD ["/server"]