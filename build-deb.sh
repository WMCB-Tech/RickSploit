#!/bin/sh

if ! command -v dpkg-deb > /dev/null 2>&1; then
	echo "No Command 'dpkg-deb' is installed"
	exit 2
fi

if [ ! -e ./src ]; then
	echo "Cannot Build Package: No Such file or directory"
	exit 2
fi

# Build Package
cp ./src ./rickroll-metasploit -r
chmod 755 ./rickroll-metasploit/DEBIAN -R
dpkg-deb -z9 -Zgzip --uniform-compression --build ./rickroll-metasploit
rm -rf ./rickroll-metasploit
