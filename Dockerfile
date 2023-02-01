FROM golang:1.19.5-alpine3.17

RUN go install github.com/semichkin-gopkg/airc/cmd/airc@v0.0.7

ENTRYPOINT ["airc"]

CMD ["build-run", "-c", "/air/.air.toml"]
