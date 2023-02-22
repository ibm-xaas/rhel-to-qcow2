source "qemu" "fedora37" {
  iso_url                   = "https://download.fedoraproject.org/pub/fedora/linux/releases/37/Cloud/x86_64/images/Fedora-Cloud-Base-37-1.7.x86_64.raw.xz"
  iso_checksum              = "file:https://getfedora.org/static/checksums/37/images/Fedora-Cloud-37-1.7-x86_64-CHECKSUM"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/fedora/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "fedora"
  ssh_private_key_file      = "~/.ssh/id_rsa"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  boot_wait                 = "3m"
  use_default_display       = true
  vm_name                   = "fedora37"
  qemuargs = [
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-fedora.img"]
  ]
}

build {
  sources = ["source.qemu.fedora37"]
}
