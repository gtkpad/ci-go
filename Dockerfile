FROM golang:latest

WORKDIR /app

COPY . .

RUN go build -o math
RUN chmod +x math

CMD ["./math"]