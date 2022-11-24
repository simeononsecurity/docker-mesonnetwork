# docker-ubuntu-hardened
Dockerized Meson Network Node with amd64 support

---------------------------

### Docker Container Setup
Examples:
```bash
docker run \
    --net='bridge' \
    -p 443:443/tcp \
    -p 443:443/tcp \
    -e https_port="443" \
    -e token="qwertyuiopasdfghjkl"
    -e cache_size="20" \
    --name diymiddleman -P -td simeononsecurity/docker-mesonnetwork:latest 
```  