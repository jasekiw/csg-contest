#!/usr/bin/env bash

iptables -F
iptables -P INPUT ACCEPT
iptables service save