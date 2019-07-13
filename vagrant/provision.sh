#!/usr/bin/env bash

sh ./env-vars.sh
VAGRANT_HOST_DIR=/home/vagrant/vagrant_jenkins

echo "======================================="
echo "Updating CentOs..."
echo "======================================="

sudo yum install -y epel-release
sudo yum -y update
sudo yum install -y net-tools
sudo yum install -y wget
sudo yum -y install unzip
sudo yum -y install git


echo "======================================="
echo "Setting up webadmin user..."
echo "======================================="

sudo groupadd --system webadmin
sudo mkdir /home/webadmin
sudo useradd --system --gid webadmin --shell /bin/bash --home /home/webadmin webadmin
sudo chown webadmin:webadmin /home/webadmin
cat <<EOF | sudo tee /etc/sudoers.d/webadmin
%webadmin ALL=(ALL) NOPASSWD: ALL
EOF



echo "======================================="
echo "Setting up python..."
echo "======================================="

# Ref: https://www.svennd.be/install-python-3-6-on-centos-7/


sudo yum -y install yum-utils
sudo yum -y groupinstall development

sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
sudo yum -y update

sudo yum -y install python36u python36u-pip

sudo yum -y install python-pip

sudo pip3.6 install --upgrade pip



echo "======================================="
echo "Generating SSH Key ...."
echo "======================================="

cat /dev/zero | ssh-keygen -q -N "" > /dev/null

echo "======================================="
echo "Vagrant provisioning complete."
echo "======================================="

