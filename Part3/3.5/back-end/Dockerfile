FROM golang:1.16-alpine


WORKDIR /usr/src/app


COPY . .

ENV REQUEST_ORIGIN http://localhost:80


RUN go build -o server .


RUN addgroup -S appuser && adduser -S -G appuser appuser \
    && chown -R appuser .

USER appuser


EXPOSE 8080

CMD ["./server"]
