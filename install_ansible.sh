#!/usr/bin/env bash

if [[ "$(which ansible)" == "" ]]; then
    sudo apt update
    sudo apt upgrade -y
    sudo apt install -y \
        python3 \
        python3-pip \
        git

    pip3 install ansible

    export PATH=$PATH:~/.local/bin
fi

if [[ -d /tmp/ansible ]]; then
    cd /tmp/ansible && git pull
else
    git clone https://github.com/ibacangan/ansible.git /tmp/ansible
fi

cd /tmp/ansible

ansible-galaxy install -r requirements.yaml