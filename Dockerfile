FROM golang:1.20.2-alpine3.17

RUN apk update
RUN apk add git

RUN go install github.com/semichkin-gopkg/airc/cmd/airc@v0.0.7

ENTRYPOINT ["airc"]

CMD ["build-run", "-c", "/air/.air.toml"]
