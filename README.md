# Docker socat

Simple to use proxy for docker using socat

`${HOST_PORT}` -> Port on host: 8080 (jenkins)
`${CONTAINER_PORT}` -> Port in container: 80 (jenkins on 80 in container)


Example usage:
```
version: '2'

services:
  jenkins:
    build: veeenex/socat
    container_name: jenkins
    restart: always
    networks:
      - public
    environment:
      CONTAINER_PORT: 80
      HOST_PORT: 8080

networks:
  public:
    external:
      name: public
```
