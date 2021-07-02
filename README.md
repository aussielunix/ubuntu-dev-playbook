# Ubuntu Linux Development Ansible Playbook

This playbook installs and configures the software I use on my headless Ubuntu Linux VM for web and software development.

## Installation

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
* `curl -Ls http://pajuna.it | bash`
* Edit default.config.yml (optional)
* run `pajuna`

```bash
pajuna
```

<br />
<br />
**NOTE** You can create yourself an automated Ubuntu installer using the [Pajuna automated iso generator](https://github.com/pajuna/ubuntu-custom-iso)

<table>
  <tr>
    <th>Author</th><td>Mick Pollard (aussielunix at g mail dot com)</td>
  </tr>
  <tr>
    <th>Credit</th><td>Adapted from [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook) for Ubuntu</td>
  </tr>
  <tr>
    <th>Copyright</th><td>Copyright (c) 2021 by Mick Pollard</td>
  </tr>
  <tr>
    <th>License</th><td>Distributed under the MIT License, see <a href="https://github.com/pajuna/mystation/blob/master/LICENSE">LICENSE</a></td>
  </tr>
  <tr>
    <th>twitter </th><td>@aussielunix</td>
  </tr>
</table>
