#!/bin/sh -x

# Install python

sudo apt-get --yes update
sudo apt-get --yes install git python2.7 python-dev python-setuptools libmysqlclient-dev --upgrade

# Install pip
sudo easy_install pip

# Install the requirements (includes the correct version of Ansible)
sudo pip --no-input install -r pre-requirements.txt
sudo pip --no-input install -r requirements.txt
