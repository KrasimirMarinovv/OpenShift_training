FROM golang:1.22-alpine

RUN git config --global http.sslVerify false

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go build -o main .

EXPOSE 8080

CMD [ "/app/main" ]
