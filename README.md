# Ubuntu Linux Development Ansible Playbook

This playbook installs and configures the software I use on my headless Ubuntu Linux VM for web and software development.

## Installation

This assumes you have ssh keys setup with ssh-agent or agent-forwarding. (See below if you do not)

* `curl -Ls http://pajuna.it | bash`
* run `pajuna`

```bash
$ pajuna

PLAY [local] **********************************************************************************************************************************************************************************

TASK [Gathering Facts] ************************************************************************************************************************************************************************
ok: [localhost]

TASK [Include playbook custom configuration] **************************************************************************************************************************************************

TASK [create /bin/src/tmp dir] ****************************************************************************************************************************************************************
changed: [localhost] => (item=~/bin)
changed: [localhost] => (item=~/src)
changed: [localhost] => (item=~/tmp)
```

## Overriding Defaults

Not everyone's development environment and preferred software configuration is the same.  
You can override any of the defaults configured in `default.config.yml` by creating a `config.yml` file and setting the overrides in that file.

## How to run ssh-agent on your Ubuntu VM during bootstrapping

* Copy your pub/private ssh key to the VM
  * `scp -r ~/.ssh/id_rsa* ubuntu@newvm:~/.ssh/`
* ssh to newvm
  * `ssh ubuntu@newvm`
* Fix ssh key permissions
  * `chmod 0700 .ssh`
  * `chmod 0400 .ssh/id_rsa`
  * `chmod 0644 .ssh/id_rsa.pub`
* Start an ssh-agent
  * `eval "$(ssh-agent -s)"`
* add your ssh key to the agent
  * `ssh-add`

## Author

This project was created by [Mick Pollard](https://aussielunix.io) [@aussielunix](https://twitter.com/aussielunix) and was adapted for Ubuntu from [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook).

## License

Distributed under the MIT [License](https://github.com/pajuna/mystation/blob/master/LICENSE)
