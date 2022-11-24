cd /home/docker
sudo mkdir /etc/init
wget "${tarlocation}"
tar -zxf "${tar}.tar.gz"
rm -f "${tar}.tar.gz"
cd ./${tar}/ && sudo ./service install meson_cdn
sudo ./meson_cdn config set --token="${token}" --https_port="${https_port}" --cache.size="${cache_size}"
sudo ./meson_cdn
