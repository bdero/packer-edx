#!/bin/bash

ansible-playbook edx-ansible/playbooks/edx_sandbox.yml -i "micromasters.d.mitx.mit.edu," --tags deploy --extra-vars "@../../environments/edx-sandbox.yml"
