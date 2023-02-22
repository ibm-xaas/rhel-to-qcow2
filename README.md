[![pre-commit](https://github.com/ibm-xaas/rhel-to-qcow2/actions/workflows/pre-commit.yml/badge.svg?branch=main)](https://github.com/ibm-xaas/rhel-to-qcow2/actions/workflows/pre-commit.yml)
[![fed-dev-hero](https://images.credly.com/size/220x220/images/2b1a505f-ece9-445b-b830-38ef5141b5a3/IBM-Federated-Developer-Hero.png)](https://www.credly.com/badges/406d727d-0799-4de7-88fe-b0ef2528375a/public_url)

# rhel-to-qcow2
Redhat Enterprise Linux and convert to qcow2 format

# Test
```
qemu.rhel: output will be in this color.

==> qemu.rhel: Retrieving ISO
==> qemu.rhel: Trying /root/Downloads/rhel-8.7-x86_64-kvm.qcow2
==> qemu.rhel: Trying /root/Downloads/rhel-8.7-x86_64-kvm.qcow2?checksum=sha256%3A9b5718977832213cf07dc17a9ba3ad171b21576840064ecf2c395fa7642412d2
==> qemu.rhel: /root/Downloads/rhel-8.7-x86_64-kvm.qcow2?checksum=sha256%3A9b5718977832213cf07dc17a9ba3ad171b21576840064ecf2c395fa7642412d2 => /root/Downloads/rhel-8.7-x86_64-kvm.qcow2
    qemu.rhel: File extension already matches desired output format. Skipping qemu-img convert step
==> qemu.rhel: Resizing hard drive...
==> qemu.rhel: Starting HTTP server on port 8727
==> qemu.rhel: Found port for communicator (SSH, WinRM, etc): 3522.
==> qemu.rhel: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.rhel: Starting VM, booting disk image
    qemu.rhel: The VM will be run headless, without a GUI. If you want to
    qemu.rhel: view the screen of the VM, connect via VNC without a password to
    qemu.rhel: vnc://127.0.0.1:5990
==> qemu.rhel: Overriding default Qemu arguments with qemuargs template option...
==> qemu.rhel: Waiting 3m0s for boot...
==> qemu.rhel: Connecting to VM via VNC (127.0.0.1:5990)
==> qemu.rhel: Typing the boot command over VNC...
    qemu.rhel: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.rhel: Using SSH communicator to connect: 127.0.0.1
==> qemu.rhel: Waiting for SSH to become available...
==> qemu.rhel: Connected to SSH!
==> qemu.rhel: Gracefully halting virtual machine...
==> qemu.rhel: Converting hard drive...
Build 'qemu.rhel' finished after 4 minutes 50 seconds.

==> Wait completed after 4 minutes 50 seconds

==> Builds finished. The artifacts of successful builds are:
--> qemu.rhel: VM files in directory: output

real    4m54.337s
user    4m3.916s
sys     0m31.811s
```
