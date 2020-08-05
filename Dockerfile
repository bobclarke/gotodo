FROM golang:1.14.6

WORKDIR /app

COPY . .

RUN go get -v -t -d ./...

EXPOSE 8080

ENTRYPOINT ["go", "run", "."]

