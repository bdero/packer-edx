#!/bin/sh -x

# Install python

sudo apt-get --yes update
sudo apt-get --yes install git python2.7 python-dev libmysqlclient-dev --upgrade

# Install setuptools
curl -0 http://peak.telecommunity.com/dist/ez_setup.py > /tmp/ez_setup.py
sudo python /tmp/ez_setup.py

# Install pip
sudo easy_install pip

# Install the requirements (includes the correct version of Ansible)
sudo pip --no-input install -r pre-requirements.txt
sudo pip --no-input install -r requirements.txt
