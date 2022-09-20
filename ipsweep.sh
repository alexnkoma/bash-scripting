#!/bin/bash
for i in `seq 1 254` ; do
	ping -c 1 $1.$i | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
# $1 is the firts argument when execute script (./ipsweep.sh 192.168.1)

