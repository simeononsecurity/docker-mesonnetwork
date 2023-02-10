# docker-ubuntu-hardened
Dockerized Meson Network Node with amd64 support

[![Docker Image CI](https://github.com/simeononsecurity/docker-mesonnetwork/actions/workflows/docker-image.yml/badge.svg)](https://github.com/simeononsecurity/docker-mesonnetwork/actions/workflows/docker-image.yml) [![Docker Image CI - arm64](https://github.com/simeononsecurity/docker-mesonnetwork/actions/workflows/docker-image-arm64.yml/badge.svg)](https://github.com/simeononsecurity/docker-mesonnetwork/actions/workflows/docker-image-arm64.yml)[![VirusTotal Scan](https://github.com/simeononsecurity/docker-mesonnetwork/actions/workflows/virustotal.yml/badge.svg)](https://github.com/simeononsecurity/docker-mesonnetwork/actions/workflows/virustotal.yml)
---------------------------

### Docker Container Setup
**Note:** Grab your token from the [Meson Network Dashboard](https://dashboard.meson.network/user_node)

Examples:
amd64:
```bash
docker volume create mesonnetworkdata
docker run \
    --net='bridge' \
    -p 443:443/tcp \
    -p 443:443/tcp \
    -e https_port="443" \
    -e token="qwertyuiopasdfghjkl"
    -e cache_size="20" \
    -v mesonnetworkdata:/home/docker \
    --name mesonnetwork -P -td simeononsecurity/docker-mesonnetwork:latest 
``` 
arm64:
```bash
docker volume create mesonnetworkdata
docker run \
    --net='bridge' \
    -p 443:443/tcp \
    -p 443:443/tcp \
    -e https_port="443" \
    -e token="qwertyuiopasdfghjkl"
    -e cache_size="20" \
    -v mesonnetworkdata:/home/docker \
    --name mesonnetwork -P -td simeononsecurity/docker-mesonnetwork:latest-arm64
``` 
