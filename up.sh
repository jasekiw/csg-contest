#!/usr/bin/env bash

yum -y update

./scripts/iptables/up.sh
./scripts/chkconfig//up.sh