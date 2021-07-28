#!/bin/bash

# Clear History
sudo rm -rf /var/log
#sudo rm -rf /var/log/cloud* /var/log/dmesg* /var/log/audit/audit* /var/log/sa/sa* /var/log/[Dd]racut* /var/log/tuned/tuned* /var/log/aide/aide*
sudo rm -f /etc/resolv.conf /var/lib/NetworkManager/* /etc/ssh/ssh_host_*
sudo rm -f /tmp/cloud-init-output.* /tmp/ssh-* /tmp/yum* 
sudo rm -f /var/spool/plymouth/boot.log 
sudo rm -f /var/lib/dhclient/dhclient-eth0.leases /var/lib/systemd/random-seed
sudo rm -rf /var/cache/*
cat /dev/null > /etc/machine-id
#unset HISTFILE
#/bin/cloud-init clean
sudo rm -rf /run/cloud-init /var/lib/cloud/instances/*
yum clean all