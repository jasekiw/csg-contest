#!/usr/bin/env bash

iptables -F
iptables -P INPUT ACCEPT
service iptables save