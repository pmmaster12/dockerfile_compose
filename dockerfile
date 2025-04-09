# this is the starting point of dockerfile
FROM alpine:3.18

# run commads
RUN apk add curl
# set working directory or create directory
WORKDIR /downloads

RUN adduser -D tarun
#
USER tarun
