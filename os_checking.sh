#!/bin/bash

echo "Available Information is about:"
echo "    (1) disks"
echo "    (2) memory"
echo "    (3) network"
echo "    (4) users"

read -p "Want to know information about: " entry

if [ "$entry" == "memory" ]; then
    memory=$(free -m)
    echo "$memory"
fi

if [ "$entry" == "disks" ]; then
    disk=$(df -h)
    echo "$disk"
fi

if [ "$entry" == "network" ]; then
    network=$(ip addr)
    echo "$network"
fi

if [ "$entry" == "users" ]; then
    users=$(who)
    echo "$users"
fi
