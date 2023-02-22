source "qemu" "rhel87" {
  headless                  = true
  accelerator               = "hvf"
  iso_url                   = "/home/ubuntu/Downloads/rhel-8.7-x86_64-kvm.qcow2"
  iso_checksum              = "file:./RHELSHA256SUMS"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/packer/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "packer"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  net_device                = "virtio-net"
  boot_wait                 = "1m"
  use_default_display       = true
  vm_name                   = "rhel87"
  qemuargs = [
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-rhel.img"]
  ]
}

source "qemu" "rhel90" {
  headless                  = true
  accelerator               = "hvf"
  iso_url                   = "/home/ubuntu/Downloads/rhel-baseos-9.0-x86_64-kvm.qcow2"
  iso_checksum              = "file:./RHELSHA256SUMS"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/packer/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "packer"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  net_device                = "virtio-net"
  boot_wait                 = "1m"
  use_default_display       = true
  vm_name                   = "rhel90"
  qemuargs = [
    ["-cpu", "host"],
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-rhel.img"]
  ]
}

source "qemu" "rhel91" {
  headless                  = true
  accelerator               = "hvf"
  iso_url                   = "/home/ubuntu/Downloads/rhel-baseos-9.1-x86_64-kvm.qcow2"
  iso_checksum              = "file:./RHELSHA256SUMS"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/packer/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "packer"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  net_device                = "virtio-net"
  boot_wait                 = "1m"
  use_default_display       = true
  vm_name                   = "rhel91"
  qemuargs = [
    ["-cpu", "host"],
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-rhel.img"]
  ]
}

build {
  sources = [
    "source.qemu.rhel87",
    "source.qemu.rhel90",
    "source.qemu.rhel91"
  ]
}
