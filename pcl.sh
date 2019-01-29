## install PCL ##

#!/bin/bash

#1,https://github.com/PointCloudLibrary/pcl/releases
#からSource code(tar.gz)をクリックしてダウンロード

cd Downloads
tar zxvf pcl-pcl-1.8.1.tar.gz
cd pcl-pcl-1.8.1 && mkdir build && cd build
cmake ..
make -j4
sudo make -j2 install
