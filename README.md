# Pajuna Playbook

My Ubuntu LTS workstation management Ansible playbook.

Makes use of [Pajuna](http://pajuna.io)

## TL;DR

`curl -Ls http://pajuna.it | bash`

* Edit playbook.yml and add some roles
* Edit settings.yml and add a bunch of info.
* Start an ssh-agent
  * `eval "$(ssh-agent -s)"`
* add your ssh key to the agent
  * `ssh-add`
* run `pajuna -K`
```bash
$ pajuna -K
```

## What is Pajuna

A collection of Ansible based repos for lowering the time it takes to be productive again when you are starting with a new Ubuntu LTS Workstation.
This includes remastering the Ubuntu installer iso through to installing and managing development tools, dotfiles and more.

## The goals of this project

* lower the time it takes to be productive again when you are starting with a new workstation
* to be of minimal hindrance to keep it up to date
* not rely on any bespoke software that is at risk of becoming abandonware
* Waiting for your contribution upstream shouldn't slow you down

## Directory layout

The following directories are used

* **~/.ansible**
    * This is a clone of YOUR version of [pajuna/mystation](https://github.com/pajuna/mystation)
* **~/.ansible/roles**
    * This is where private roles belong.
    * These roles take precedence over all others.
* **~/.pajuna/myfork**
    * Your FORK of [pajuna/Ubuntu-LTS](https://github.com/pajuna/Ubuntu-LTS)
    * This IS to be edited by you)
    * Send PR's from this to upstream
* **~/.pajuna/upstream**
    * Upstream clone of [pajuna/Ubuntu-LTS](https://github.com/pajuna/Ubuntu-LTS)
    * This is not to be edited by you)
* **~/.dotfiles**
    * Self explanitory but the Pajuna roles all assume your dotfiles is a [git directory](https://github.com/pajuna/dotfiles)
* **~/.vim**
    * Self explanitory but the Pajuna roles assume your .vim directory is a [git directory](https://github.com/pajuna/vimrc)

Ansible will look for roles in the following places, in order:

* ~/.ansible/roles
* ~/.pajuna/myfork
* ~/.pajuna/upstream

If you want to make a change to a role in the Pajuna [Ubuntu LTS](https://github.com/pajuna/Ubuntu-LTS) repo then fork it, clone into ~/.pajuna/myfork and hack on in in a branch and submit a PR to upstream.

## Getting Started

With a clean fresh minimal install of Ubuntu LTS the following bootstrap script is all you need to get up and running with Pajuna.

```bash
curl -Ls http://pajuna.it/ | bash
```
This bootstrap script will:
  > add the Ansible PPA  
	  install Ansible from PPA  
    `git clone https://github.com/pajuna/mystation.git ~/.ansible`  
    `git clone https://github.com/pajuna/Ubuntu-LTS.git ~/.pajuna/upstream`  

* Edit playbook.yml and add some roles
* Edit settings.yml and add a bunch of info.
* Start an ssh-agent
  * `eval "$(ssh-agent -s)"`
* add your ssh key to the agent
  * `ssh-add`
* run `pajuna -K`
```bash
$ pajuna -K
```

Each role in [pajuna/Ubuntu-LTS](https://github.com/pajuna/Ubuntu-LTS) that exposes any settings should have both a `defaults/main.yml` and a README.md with some info about what you need in your settings.yml
<br />
<br />
**NOTE** You can create yourself an automated Ubuntu installer using the [Pajuna automated iso generator](https://github.com/pajuna/ubuntu-custom-iso)

<table>
  <tr>
    <th>Author</th><td>Mick Pollard (aussielunix at g mail dot com)</td>
  </tr>
  <tr>
    <th>Copyright</th><td>Copyright (c) 2017 by Mick Pollard</td>
  </tr>
  <tr>
    <th>License</th><td>Distributed under the MIT License, see <a href="https://github.com/pajuna/mystation/blob/master/LICENSE">LICENSE</a></td>
  </tr>
  <tr>
    <th>twitter </th><td>@aussielunix</td>
  </tr>
</table>
