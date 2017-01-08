#!/bin/bash

# Purpose:
# * bootstrap machine in order to prepare for ansible playbook run
#
set -e

# Download and install Command Line Tools if no developer tools exist
if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]
then
    echo "Info   | Install   | xcode"
    xcode-select --install
fi

# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]
then
    echo "Info   | Install   | Ansible"
    easy_install pip
    pip install ansible
fi

# Modify the PATH
# This should be subsequently updated in shell settings
export PATH=/usr/local/bin:$PATH
