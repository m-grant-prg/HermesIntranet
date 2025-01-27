#!/usr/bin/env bash

set -eo pipefail

echo "Contents of /etc/resolv.conf before processing..."
cat /etc/resolv.conf

case "$HOSTNAME" in
	cerberus)
		sudo sed -i -e "s/192\.168\.1\.252/192\.168\.1\.250/" \
			/etc/resolv.conf
		;;
	hermes)
		sudo sed -i -e "s/192\.168\.1\.250/192\.168\.1\.252/" \
			/etc/resolv.conf
		;;
	*)
		echo "Unknown host $HOSTNAME"
		exit 1
		;;
esac

echo "Contents of /etc/resolv.conf after processing..."
cat /etc/resolv.conf

sudo systemctl enable dnsmasq
sudo systemctl start dnsmasq
sudo systemctl status dnsmasq

exit 0

