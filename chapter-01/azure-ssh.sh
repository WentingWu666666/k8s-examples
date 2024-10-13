#!/bin/bash
HOST=$1
case $HOST in

  host01)
    IP=20.191.120.10
    ;;

  *)
    echo "Usage: ./azure-ssh.sh <host>"
    echo "  Valid hosts: host01"
    exit 1
    ;;

esac

ssh_args="-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"
ssh_args+=" -i ../sshkeys/id_rsa_azure_ansible_k8s"
ssh $ssh_args azureuser@$IP
