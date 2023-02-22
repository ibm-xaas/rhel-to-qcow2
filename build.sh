#!/usr/bin/env sh
#./create_locald.sh
cd packer
rm -rf output
PACKER_LOG=0 packer init rhel.pkr.hcl
PACKER_LOG=0 packer build rhel.pkr.hcl
