FROM golang:buster as builder
WORKDIR /app
ADD main.go .
RUN go build -o app main.go
EXPOSE 8080
CMD ["./app"]
