#!/usr/bin/env bash
yum -y install sendmail
rpm -Uvh http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm
yum -y install fail2ban
service fail2ban startpin g