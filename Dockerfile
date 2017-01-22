FROM alpine:3.1

RUN apk --update add socat

CMD /usr/bin/socat TCP-LISTEN:${CONTAINER_PORT},fork TCP:$(ip route show 0.0.0.0/0 | grep -Eo 'via \S+' | awk '{ print $2 }'):${HOST_PORT}
