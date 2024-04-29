#!/bin/sh

dd if=/dev/zero of=/swap bs=1024 count=1024K
mkswap /swap
echo "/swap swap swap defaults 0 0" >> /etc/fstab
mount -a
swapon
