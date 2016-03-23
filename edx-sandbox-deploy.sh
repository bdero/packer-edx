#!/bin/bash

cd edx-ansible/playbooks/; ansible-playbook ./edx_sandbox.yml -i "micromasters.d.mitx.mit.edu," -u ubuntu --private-key ../../secrets/keys/mitx-devops --tags deploy --extra-vars "@../../environments/edx-sandbox.yml"
