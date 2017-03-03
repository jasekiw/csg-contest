#!/usr/bin/env bash
#configure passwords to use sha512 instead of md5 for increased password strength
authconfig --passalgo=sha512 --update

#disable wireless
for i in $(find /lib/modules/`uname -r`/kernel/drivers/net/wireless -name "*.ko" -type f) ; do echo blacklist $i >> /etc/modprobe.d/blacklist-wireless ; done