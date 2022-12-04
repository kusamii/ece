FROM alpine:latest
RUN apk add --no-cache bash
COPY --chmod=755 ece /bin/ece
CMD ["sh", "-c", "ece server --socks5 --key $ka --auth $ka"]