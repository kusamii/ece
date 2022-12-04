FROM alpine:latest
RUN apk add --no-cache bash
COPY --chmod=755 ece /bin/ece
EXPOSE 8080
CMD ["sh", "-c", "ece server --socks5 --key $ka --auth $ka"]
