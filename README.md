# Packer edX

Use [Packer](https://www.packer.io/) to spin up AMIs for edX.

## Setup

```bash
# Get the repository
git clone git@github.com:bdero/packer-edx.git
cd packer-edx
git submodule init
git submodule update

# Install the edx-ansible requirements
pip install -r edx-ansible/requirements.txt
```

## Usage

```bash
# Build a sandbox AMI
packer build edx-sandbox.json
```
