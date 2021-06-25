# Pajuna Playbook

My Ubuntu LTS workstation management Ansible playbook.

Makes use of [Pajuna](http://pajuna.io)

## TL;DR

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
$ pajuna
```

## What is Pajuna

A collection of Ansible based repos for lowering the time it takes to be productive again when you are starting with a new Ubuntu LTS Workstation.
This includes remastering the Ubuntu installer iso through to installing and managing development tools, dotfiles and more.

## The goals of this project

* lower the time it takes to be productive again when you are starting with a new workstation
* to be of minimal hindrance to keep it up to date
* not rely on any bespoke software that is at risk of becoming abandonware
* Waiting for your contribution upstream shouldn't slow you down

<br />
<br />
**NOTE** You can create yourself an automated Ubuntu installer using the [Pajuna automated iso generator](https://github.com/pajuna/ubuntu-custom-iso)

<table>
  <tr>
    <th>Author</th><td>Mick Pollard (aussielunix at g mail dot com)</td>
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
