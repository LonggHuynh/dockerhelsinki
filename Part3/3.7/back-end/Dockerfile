FROM golang:1.16-alpine

WORKDIR /usr/src/app


COPY . .

ENV REQUEST_ORIGIN http://localhost:80


RUN go build -o server .

EXPOSE 8080

CMD ["./server"]
