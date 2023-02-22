#!/usr/bin/env bash
public_key=$(cat ~/.ssh/id_ed25519.pub)
cat <<EOF > user-data
#cloud-config
user: packer
ssh_authorized_keys:
  - "${public_key}"
EOF

cloud-localds packer/disk-ssh-pub-rhel.img user-data
