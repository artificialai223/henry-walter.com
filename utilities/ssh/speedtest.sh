#!/bin/bash
clear
echo '• Linking python3 to python'
sudo ln -s /usr/bin/python3 /usr/bin/python
echo '• Downloading speedtest-cli'
sudo curl -s -Lo speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py 
sudo chmod +x speedtest-cli
echo '• Downloaded speedtest-cli'
clear
echo '• Beginning test\n\n'

sudo python3 speedtest-cli --share

echo '\n\n• Test finished, Deleting speedtest-cli'
sudo rm speedtest-cli
