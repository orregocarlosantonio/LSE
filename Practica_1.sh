#!/bin/bash

#***********************************************************************
#******************* Actuallización Java 8 *****************************
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y 
sudo apt-get install oracle-java8-set-default -y
cd
sudo apt-get install update -y
sudo apt-get install upgrade –y
cd
#***********************************************************************
#******************************* Toolchain *****************************
sudo add-apt-repository ppa:terry.guo/gcc-arm-embedded --y
sudo apt-get update -y
sudo apt-get install gcc-arm-none-eabi -y
cd
#***********************************************************************
#********************************* Stlin *******************************
sudo apt-get install autoconf pkg-config libusb-1.0 git -y
cd ~
git clone https://github.com/texane/stlink.git
cd ~/stlink
./autogen.sh
./configure
make
#**************************** STM32 F100 *******************************
sudo cp 49-stlinkv1.rules /etc/udev/rules.d/
#**************************** STM32 F4 *******************************
sudo cp 49-stlinkv2.rules /etc/udev/rules.d/
cd

#***********************************************************************
#*************************Banco de ejemplos ****************************
git clone https://github.com/libopencm3/libopencm3-examples
cd libopencm3-examples/
sudo git submodule init
sudo git submodule update
sudo make
cd
