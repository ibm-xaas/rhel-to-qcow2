[![pre-commit](https://github.com/ibm-xaas/fedora-to-qcow2/actions/workflows/pre-commit.yml/badge.svg?branch=main)](https://github.com/ibm-xaas/fedora-to-qcow2/actions/workflows/pre-commit.yml)
# fedora-to-qcow2
Retrieve fedora 37 and convert to qcow2 format

# Test
```
06:01:20 ubuntu@d6c92099ae67 dev-env ±|init|→ ./build.sh
qemu.fedora37: output will be in this color.

==> qemu.fedora37: Retrieving ISO
==> qemu.fedora37: Trying https://download.fedoraproject.org/pub/fedora/linux/releases/37/Cloud/x86_64/images/Fedora-Cloud-Base-37-1.7.x86_64.raw.xz
==> qemu.fedora37: Trying https://download.fedoraproject.org/pub/fedora/linux/releases/37/Cloud/x86_64/images/Fedora-Cloud-Base-37-1.7.x86_64.raw.xz?checksum=sha256%3A11aefe4f00b7a3845880ca34d1779ec65703c3ee76b450c168f353723b14594e
    qemu.fedora37: Fedora-Cloud-Base-37-1.7.x86_64.raw.xz 377.31 MiB / 377.31 MiB [=] 100.00% 50s
==> qemu.fedora37: https://download.fedoraproject.org/pub/fedora/linux/releases/37/Cloud/x86_64/images/Fedora-Cloud-Base-37-1.7.x86_64.raw.xz?checksum=sha256%3A11aefe4f00b7a3845880ca34d1779ec65703c3ee76b450c168f353723b14594e => /home/ubuntu/.cache/packer/561c6eed6a9b863928217d82e252ea9717dd8f2d.iso
==> qemu.fedora37: Copying hard drive...
==> qemu.fedora37: Resizing hard drive...
==> qemu.fedora37: Starting HTTP server on port 8207
==> qemu.fedora37: Found port for communicator (SSH, WinRM, etc): 3439.
==> qemu.fedora37: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.fedora37: Starting VM, booting disk image
==> qemu.fedora37: Overriding default Qemu arguments with qemuargs template option...
==> qemu.fedora37: Waiting 3m0s for boot...
==> qemu.fedora37: Connecting to VM via VNC (127.0.0.1:5938)
==> qemu.fedora37: Typing the boot commands over VNC...
    qemu.fedora37: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.fedora37: Using SSH communicator to connect: 127.0.0.1
==> qemu.fedora37: Waiting for SSH to become available...
==> qemu.fedora37: Connected to SSH!
==> qemu.fedora37: Gracefully halting virtual machine...
==> qemu.fedora37: Converting hard drive...
Build 'qemu.fedora37' finished after 10 minutes 26 seconds.

==> Wait completed after 10 minutes 26 seconds

==> Builds finished. The artifacts of successful builds are:
--> qemu.fedora37: VM files in directory: output
06:12:18 ubuntu@d6c92099ae67 dev-env ±|init|→ ls -al packer/output/
total 909408
drwxr-xr-x 3 ubuntu ubuntu         96 Feb 15 06:11 .
drwxr-xr-x 8 ubuntu ubuntu        256 Feb 15 06:07 ..
-rw-r--r-- 1 ubuntu ubuntu 1015742464 Feb 15 06:11 fedora37
06:12:30 ubuntu@d6c92099ae67 dev-env ±|init|→
```
