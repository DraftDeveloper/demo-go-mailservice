FROM golang:alpine AS builder

WORKDIR /app

COPY . .

ENV GOOS=linux \
    CGO_ENABLED=0

RUN go build cmd/api


FROM alpine:latest


RUN mkdir /app

COPY --from=builder /app /app

COPY templates /templates

EXPOSE 80
CMD [ "/app/main"]
