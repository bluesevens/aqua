#!/bin/sh

# This is the Aqua Miner install script.
echo "Aqua Miner install script."
echo "Please do NOT run as root, run as the pool user!"

echo "Installing... Please wait!"

sleep 3

sudo apt update
sudo apt upgrade -y

sudo apt install -y git libjsoncpp-dev zlib1g-dev build-essential wget unzip cmake libc-ares-dev libgmp-dev file tree


wget https://github.com/aerth/aquaminer/archive/refs/heads/master.zip
unzip master.zip
rm -r master.zip
cd aquaminer-master

wget https://files.gitter.im/sammy007/open-ethereum-pool/IBJl/intl-format-cache.rar
bash setup_libs.bash
make deps
./build_release.sh


echo "Installation completed!"

exit 0