#!/bin/bash
sudo ip tuntap add name ogstun mode tun
sudo ip addr add 10.40.19.1/24 dev ogstun
sudo ip link set ogstun up
