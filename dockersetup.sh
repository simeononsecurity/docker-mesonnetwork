mkdir /home
mkdir /home/docker
cd /home/docker
mkdir /etc/init
wget "${tarlocation}"
tar -zxf meson_cdn-linux-amd64.tar.gz 
rm -f meson_cdn-linux-amd64.tar.gz 
cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn
sudo ./meson_cdn config set --token="${token}" --https_port="${https_port}" --cache.size="${cache_size}"
sudo ./service start meson_cdn
