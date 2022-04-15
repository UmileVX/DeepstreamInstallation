#! /bin/bash

# install nodejs
sudo apt-get install nodejs

# install pip3, and use pip3 to install pyserial for GPS gadget
sudo apt-get install python3-pip
pip3 install pyserial
pip3 install pynmea2
