FROM golang:alpine AS builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY cmd/api ./cmd/api

ENV GOOS=linux \
    CGO_ENABLED=0

RUN go build -o main ./cmd/api

FROM alpine:latest

RUN mkdir /app

COPY --from=builder /app/main /app/main

COPY templates /templates

EXPOSE 8080

CMD ["/app/main"]
