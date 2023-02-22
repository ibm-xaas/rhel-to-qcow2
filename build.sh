#!/usr/bin/env sh
./create_locald.sh
cd packer
rm -rf output
PACKER_LOG=0 packer init fedora.pkr.hcl
PACKER_LOG=0 packer build fedora.pkr.hcl
