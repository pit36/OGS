#!/bin/bash
#
# systctl
sudo sysctl -w net.ipv4.ip_forward=1
#
#5GC
screen -S nrf -d -m /home/o5g/build/open5gs/build/src/nrf/open5gs-nrfd -c /home/o5g/all.yaml
screen -S udr -d -m /home/o5g/build/open5gs/build/src/udr/open5gs-udrd -c /home/o5g/all.yaml
screen -S udm -d -m /home/o5g/build/open5gs/build/src/udm/open5gs-udmd -c /home/o5g/all.yaml
screen -S ausf -d -m /home/o5g/build/open5gs/build/src/ausf/open5gs-ausfd -c /home/o5g/all.yaml
screen -S smf -d -m /home/o5g/build/open5gs/build/src/smf/open5gs-smfd -c /home/o5g/all.yaml
screen -S amf -d -m /home/o5g/build/open5gs/build/src/amf/open5gs-amfd -c /home/o5g/all.yaml
screen -S upf -d -m /home/o5g/build/open5gs/build/src/upf/open5gs-upfd -c /home/o5g/all.yaml

#EPC
screen -S hss -d -m /home/o5g/build/open5gs/build/src/hss/open5gs-hssd -c /home/o5g/all.yaml
screen -S mme -d -m /home/o5g/build/open5gs/build/src/mme/open5gs-mmed -c /home/o5g/all.yaml
screen -S pcrf -d -m /home/o5g/build/open5gs/build/src/pcrf/open5gs-pcrfd -c /home/o5g/all.yaml
screen -S sgwc -d -m /home/o5g/build/open5gs/build/src/sgwc/open5gs-sgwcd -c /home/o5g/all.yaml
screen -S sgwu -d -m /home/o5g/build/open5gs/build/src/sgwu/open5gs-sgwud -c /home/o5g/all.yaml