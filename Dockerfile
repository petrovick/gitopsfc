FROM golang:1.20-alpine as build
WORKDIR /app
COPY . .

# MAC M1
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o server

FROM scratch
WORKDIR /app
COPY --from=build /app/server .
ENTRYPOINT ["./server"]