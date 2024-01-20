# Transfer-Zip-Aio

- 中文用户请前往 [transfer.zip-aio-zh](https://github.com/niliovo/transfer-zip-aio-zh)

- [Github](https://github.com/niliovo/transfer-zip-aio)
- [Docker Hub](https://hub.docker.com/r/niliaerith/transfer-zip-aio)

## Project Introduction

- This project packages the transfer.zip-web front end and back end into a Docker image based on the following project

- [robinkarlberg/transfer.zip-web](https://github.com/robinkarlberg/transfer.zip-web)

**This project only packages front-end and back-end, please go to [the original repository](https://github.com/robinkarlberg/transfer.zip-web) to submit ISSUE.**

### Support Platform

- x86_64
- arm64
- x86_32(untested)
- arm32(untested)

> Tip: Multi-platform image simulates different platform compilations for QEMU, there may be problems, if the image is not available, try compiling it yourself

## Usage Introduction

### Docker Compose

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
      TZ: "Asia/Shanghai"
```

### Docker Cli

```sh
docker run -itd --name transfer-zip-aio --hostname transfer-zip-aio --net bridge -p 8080:80 --restart always -e TZ=Asia/Shanghai niliaerith/transfer-zip-aio:latest
```

### Self Compilation

```
git clone https://github.com/niliovo/transfer-zip-aio.git
cd transfer-zip-aio
docker build -t transfer-zip-aio .
# Replace the above image 'niliaerith/transfer-zip-aio' with 'transfer-zip-aio'
```

# Thanks

- [robinkarlberg/transfer.zip-web](https://github.com/robinkarlberg/transfer.zip-web)
- [GitHub](https://github.com/)
- [Docker Hub](https://hub.docker.com/)

## Star History

<a href="https://star-history.com/#niliovo/transfer-zip-aio&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=niliovo/transfer-zip-aio&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=niliovo/transfer-zip-aio&type=Date" />
    <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=niliovo/transfer-zip-aio&type=Date" />
  </picture>
</a>
