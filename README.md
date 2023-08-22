# transfer.zip-aio

- [Github](https://github.com/niliovo/transfer.zip-aio)
- [Docker Hub](https://hub.docker.com/r/niliaerith/transfer-zip-aio)

## 中文用户请前往 [transfer.zip-aio-zh](https://github.com/niliovo/transfer.zip-aio-zh)

# This project packages the transfer.zip-web front end and back end into a Docker image based on the following project

- [robinkarlberg/transfer.zip-web](https://github.com/robinkarlberg/transfer.zip-web)

**This project only packages front-end and back-end, please go to [the original repository](https://github.com/robinkarlberg/transfer.zip-web) to submit ISSUE.**

# Usage Guidelines

## Docker-Cli Usage Guidelines

- amd64/i386/arm64/armv7

```sh
docker run -itd --name transfer-zip-aio --hostname transfer-zip-aio --net bridge -p 8080:80 --restart always -e PUID=0 -e PGID=0 -e TZ=Asia/Shanghai niliaerith/transfer-zip-aio:latest
```

## Docker Compose Usage Guidelines

- amd64/i386/arm64/armv7

```compose.yml
  transfer-zip-aio:
    image: niliaerith/transfer-zip-aio:latest
    container_name: transfer-zip-aio
    hostname: transfer-zip-aio
    restart: always
    network_mode: bridge
    ports:
      - 8080:80
    environment:
      PUID: "0"
      PGID: "0"
      TZ: "Asia/Shanghai"
```

## Support Platforms

- amd64
- arm64
- i386(untested)
- armv7(untested)

# Thanks

- [robinkarlberg/transfer.zip-web](https://github.com/robinkarlberg/transfer.zip-web)
- [GitHub](https://github.com/)
- [Docker Hub](https://hub.docker.com/)
