#!/bin/bash

# Updates
apt-get -y update
apt-get -y upgrade

apt-get -y install python3-pip
apt-get -y install tmux
apt-get -y install gdb gdb-multiarch
apt-get -y install unzip
apt-get -y install foremost

# Install Binjitsu
apt-get -y install python2.7 python-pip python-dev git
pip install --upgrade git+https://github.com/binjitsu/binjitsu.git

export PWD=`pwd`
mkdir tools
cd tools

# Install pwndbg
git clone https://github.com/zachriggle/pwndbg
cp /home/vagrant/host-share/.gdbinit /home/vagrant/.gdbinit

# Capstone for pwndbg
git clone https://github.com/aquynh/capstone
cd capstone
git checkout -t origin/next
sudo ./make.sh install
cd bindings/python
sudo python3 setup.py install # Ubuntu 14.04+, GDB uses Python3
cd $PWD

# pycparser for pwndbg
pip3 install pycparser # Use pip3 for Python3

# Install radare2
git clone https://github.com/radare/radare2
cd radare2
./sys/install.sh
cd $PWD

# Uninstall capstone
sudo pip2 uninstall capstone -y

# Install correct capstone
cd /home/vagrant/tools/capstone/bindings/python
sudo python setup.py install
cd $PWD
