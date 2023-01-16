FROM cosmtrek/air:latest

RUN go install github.com/semichkin-gopkg/airc/cmd/airc@v0.0.2

ENTRYPOINT []

CMD airc build -o /air/.air.toml && air -c /air/.air.toml
