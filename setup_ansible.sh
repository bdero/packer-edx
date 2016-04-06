# Install pip
sudo apt-get --yes update
sudo apt-get --yes dist-upgrade
sudo apt-get --yes install python python-pip

# Install the requirements
sudo pip install --yes -r ./edx-ansible/pre-requirements.txt
sudo pip install --yes -r ./edx-ansible/requirements.txt
