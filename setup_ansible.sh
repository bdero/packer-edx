#!/bin/sh -x

# Install python

# Running `apt-get update` this early results in git's dependency chain
# breaking (liberror-perl), so don't.
#sudo apt-get --yes update

sudo apt-get --yes install python2.7 git libmysqlclient-dev --upgrade

# Install setuptools
curl -0 http://peak.telecommunity.com/dist/ez_setup.py > /tmp/ez_setup.py
sudo python /tmp/ez_setup.py

# Install pip
sudo easy_install pip

# Install the requirements (includes the correct version of Ansible)
sudo pip --no-input install -r pre-requirements.txt
sudo pip --no-input install -r requirements.txt
