FROM scratch

ADD . /go/src/app

WORKDIR /go/src/app

ENV PORT=3001

CMD ["./main"]