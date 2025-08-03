#!/bin/bash
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/ivansslo/wssock/refs/heads/main/gobackup/goset.sh && chmod +x goset.sh && sed -i -e 's/\r$//' goset.sh && screen -S goset ./goset.sh
