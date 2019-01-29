##create motoman_ws##

#!/bin/bash

#need pcl
source ~/memo/pcl2.sh

mkdir ~/motoman1_ws
mkdir ~/motoman1_ws/src
cd ~/motoman1_ws/src
git clone https://github.com/Nishida-Lab/motoman_project.git
cd ~/motoman1_ws
wstool init src src/motoman_project/dependencies.rosinstall
sudo apt-get install ros-indigo-industrial-msgs 
sudo apt-get install ros-indigo-industrial-robot-simulator
sudo apt-get install ros-indigo-industrial-robot-client
sudo apt-get install ros-indigo-ros-controllers
cd ~/motoman1_ws
rosdep install -i --from-paths src

catkin_make
