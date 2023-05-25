# build
FROM golang:1.16-alpine AS build

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o server


# deploy
FROM scratch

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/server .

EXPOSE 8080

CMD ["./server"]
