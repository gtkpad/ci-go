FROM golang as builder

WORKDIR /usr/src/app

COPY . .

RUN go build -v -o /usr/src/app ./...

FROM scratch
WORKDIR /app
COPY --from=builder /usr/src/app .
CMD ["./math"]