
FROM golang:latest AS build

WORKDIR /compose/url-shortener
COPY main.go main.go
COPY go.mod go.mod
RUN go get github.com/gin-gonic/gin github.com/go-redis/redis/v8 github.com/itchyny/base58-go github.com/maticorv/go-url-shortener
RUN CGO_ENABLED=0 go build -o backend main.go

FROM scratch
COPY --from=build /compose/url-shortener /usr/local/bin/backend
CMD ["/usr/local/bin/backend"]
