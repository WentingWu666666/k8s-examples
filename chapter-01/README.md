# Why Containers Matter

This folder provides the examples for the chapter "Why Containers Matter".

## Prerequisites

Be sure to start by following the instructions in the `setup` folder.

## Running in AWS

Start by provisioning:

```
ansible-playbook azure-setup.yaml
```

Then, run the main playbook:

```
ansible-playbook playbook.yaml
```

You can SSH to the instance and become root by running:

```
./azure-ssh.sh host01
sudo su -
```

When finished, don't forget to clean up:

```
ansible-playbook aws-teardown.yaml
```

## Running in Vagrant

To start:

```
vagrant up
```

This will also run the main Ansible playbook.

You can SSH to the instance and become root by running:

```
vagrant ssh
sudo su -
```

When finished, you can clean up the VM:

```
vagrant destroy
```
