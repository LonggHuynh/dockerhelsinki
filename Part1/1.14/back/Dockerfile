FROM golang:1.16

WORKDIR /usr/src/app


COPY . .

ENV REQUEST_ORIGIN http://localhost:5000


RUN go build -o server .

EXPOSE 8080

CMD ["./server"]
