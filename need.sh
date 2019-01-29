##初期設定##

#!/bin/bash

##1,terminatorのインストール
sudo apt-get install terminator

##2,gitのインストール
sudo apt-get install git

##3,slack
#公式サイトから！
#https://slack.com/intl/ja-jp/downloads/linux

#4,vimインストール
sudo apt-get install vim-gnome

#5, install kazam
sudo apt-get install kazam

#6, install dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
