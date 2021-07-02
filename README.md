# Ubuntu Linux Development Ansible Playbook

This playbook installs and configures the software I use on my headless Ubuntu Linux VM for web and software development.

## Installation

This assumes you have ssh keys setup with ssh-agent or agent-forwarding. (See below if you do not)

* `curl -Ls http://pajuna.it | bash`
* create your own `~/.pajuna/config.yml` based off of `~/.pajuna/default.config.yml` (optional)
* run `pajuna`

```bash
pajuna
```

## How to run ssh-agent on your Ubuntu VM during bootstrapping

* Copy your pub/private ssh key to the VM
  * `scp -r ~/.ssh/id_rsa* ubuntu@newvm:~/.ssh/`
  * `ssh ubuntu@newvm chmod 0400 ~/.ssh`
  * `ssh ubuntu@newvm chmod 0644 ~/.ssh/id_rsa.pub`
* ssh to newvm
  * `ssh ubuntu@newvm`
* Start an ssh-agent
  * `eval "$(ssh-agent -s)"`
* add your ssh key to the agent
  * `ssh-add`

## Author

This project was created by [Mick Pollard](https://aussielunix.io) [@aussielunix](https://twitter.com/aussielunix) and was adapted for Ubuntu from [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook).

## License

Distributed under the MIT [License](https://github.com/pajuna/mystation/blob/master/LICENSE)
