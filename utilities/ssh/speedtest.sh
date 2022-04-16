#!/bin/bash

echo '• Downloading speedtest-cli'
sudo curl -s -Lo speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py 
sudo chmod +x speedtest-cli
echo '• Downloaded speedtest-cli'
echo '• Beginning test'

sudo python3 speedtest-cli --share

echo '• Test finished, Deleting speedtest-cli'
sudo rm speedtest-cli
