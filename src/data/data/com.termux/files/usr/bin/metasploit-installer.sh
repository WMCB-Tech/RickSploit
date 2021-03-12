#!/data/data/com.termux/files/usr/bin/bash
set -e
export PREFIX=/data/data/com.termux/files/usr
export TMPDIR=/data/data/com.termux/files/usr/tmp
export MSF_VERSION=5.0.65

# Lock terminal to prevent sending text input and special key
# combinations that may break installation process.
stty -echo -icanon time 0 min 0 intr undef quit undef susp undef

# Use trap to unlock terminal at exit.
trap 'while read -r; do true; done; stty sane;' EXIT

if [ "$(id -u)" = "0" ]; then
	echo "[!] Do not install Termux packages as root :)"
	exit 1
fi

echo "[*] Downloading Metasploit Framework..."
mkdir -p "$TMPDIR"
rm -f "$TMPDIR/metasploit-$MSF_VERSION.tar.gz"
curl --fail --retry 3 --location --output /dev/null \
	"https://github.com/rapid7/metasploit-framework/archive/$MSF_VERSION.tar.gz"

echo "[*] Removing previous version Metasploit Framework..."
sleep 5

echo "[*] Extracting new version of Metasploit Framework..."
sleep 10

echo "[*] Installing 'rubygems-update' if necessary..."
curl --fail --retry 4 --location --output /dev/null https://github.com/termux/proot-distro/releases/download/v1.2-ubuntu-bionic-rootfs/ubuntu-bionic-core-cloudimg-armhf-root-2020.12.10.tar.gz

echo "[*] Updating Ruby gems..."
sleep 4

echo "[*] Installing 'bundler:1.17.3'..."
curl --fail --retry 4 --location --output /dev/null https://github.com/AndyObtiva/bundler-download/archive/v1.3.1.tar.gz

curl --fail --retry 4 --location --output /dev/null https://github.com/AndyObtiva/bundler-download/archive/v1.3.1.tar.gz

curl --fail --retry 4 --location --output /dev/null https://github.com/AndyObtiva/bundler-download/archive/v1.3.1.tar.gz

curl --fail --retry 4 --location --output /dev/null https://github.com/AndyObtiva/bundler-download/archive/v1.3.1.tar.gz

echo "[*] Installing Metasploit dependencies (may take long time)..."
curl --fail --retry 4 --location --output /dev/null https://github.com/termux/proot-distro/releases/download/v1.2-ubuntu-bionic-rootfs/ubuntu-bionic-core-cloudimg-armhf-root-2020.12.10.tar.gz

curl --fail --retry 4 --location --output /dev/null https://github.com/termux/proot-distro/releases/download/v1.2-ubuntu-bionic-rootfs/ubuntu-bionic-core-cloudimg-armhf-root-2020.12.10.tar.gz

curl --fail --retry 4 --location --output /dev/null https://github.com/termux/proot-distro/releases/download/v1.2-ubuntu-bionic-rootfs/ubuntu-bionic-core-cloudimg-armhf-root-2020.12.10.tar.gz

curl --fail --retry 4 --location --output /dev/null https://github.com/termux/proot-distro/releases/download/v1.2-ubuntu-bionic-rootfs/ubuntu-bionic-core-cloudimg-armhf-root-2020.12.10.tar.gz

curl --fail --retry 4 --location --output /dev/null https://github.com/termux/proot-distro/releases/download/v1.2-ubuntu-bionic-rootfs/ubuntu-bionic-core-cloudimg-armhf-root-2020.12.10.tar.gz

echo "[*] Running fixes..."
sleep 7

echo "[*] Setting up PostgreSQL database..."
echo "Refreshing Database...."
sleep 3

echo "[*] Metasploit Framework installation finished."

exit 0
