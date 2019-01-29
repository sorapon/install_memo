#!/bin/bash

mkdir ~/kinectv2
cd ~/kinectv2/
git clone https://github.com/OpenKinect/libfreenect2.git
cd libfreenect2/depends/
./download_debs_trusty.sh 
sudo dpkg -i debs/libusb*deb
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libturbojpeg libjpeg-turbo8-dev
cd ..
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/freenect2
make
make install
