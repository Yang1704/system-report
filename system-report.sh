#!/bin/bash

source /etc/os-release

echo "System Report"
echo "-------------"

echo
echo "System Information"
echo "------------------"

echo
echo "Hostname:"
hostname

echo
echo "OS:"
echo "$PRETTY_NAME"

echo
echo "Uptime:"
uptime

echo
echo "IP Address Information:"
ip a

echo
echo "Routing / Gateway Information:"
ip r

echo
echo "Hardware Information:"
sudo lshw -short

echo
echo "RAM Information:"
free -h

echo
echo "Disk Space:"
df -h

echo
echo "Users Logged In:"
who

echo
echo "Process Count:"
ps -e | wc -l

echo
echo "Listening Network Ports:"
ss -tuln

echo
echo "Firewall Status:"
sudo ufw status
