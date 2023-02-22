[![pre-commit](https://github.com/ibm-xaas/rhel-to-qcow2/actions/workflows/pre-commit.yml/badge.svg?branch=main)](https://github.com/ibm-xaas/rhel-to-qcow2/actions/workflows/pre-commit.yml)
[![@seungyeop's Holopin board](https://holopin.me/seungyeop)](https://holopin.io/@seungyeop)
[![fed-dev-hero](https://images.credly.com/size/220x220/images/2b1a505f-ece9-445b-b830-38ef5141b5a3/IBM-Federated-Developer-Hero.png)](https://www.credly.com/badges/406d727d-0799-4de7-88fe-b0ef2528375a/public_url)

# rhel-to-qcow2
Redhat Enterprise Linux and convert to qcow2 format

* &#9745; rhel8.7 : OK
* &#9744; rhel9.0 : ssh does not connect
* &#9744; rhel9.1 : ssh does not connect

# Test
```
./build.sh
qemu.rhel87: output will be in this color.

==> qemu.rhel87: Retrieving ISO
==> qemu.rhel87: Trying /home/ubuntu/Downloads/rhel-8.7-x86_64-kvm.qcow2
==> qemu.rhel87: Trying /home/ubuntu/Downloads/rhel-8.7-x86_64-kvm.qcow2?checksum=sha256%3A9b5718977832213cf07dc17a9ba3ad171b21576840064ecf2c395fa7642412d2
==> qemu.rhel87: /home/ubuntu/Downloads/rhel-8.7-x86_64-kvm.qcow2?checksum=sha256%3A9b5718977832213cf07dc17a9ba3ad171b21576840064ecf2c395fa7642412d2 => /home/ubuntu/Downloads/rhel-8.7-x86_64-kvm.qcow2
    qemu.rhel87: File extension already matches desired output format. Skipping qemu-img convert step
==> qemu.rhel87: Resizing hard drive...
==> qemu.rhel87: Starting HTTP server on port 8648
==> qemu.rhel87: Found port for communicator (SSH, WinRM, etc): 4292.
==> qemu.rhel87: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.rhel87: Starting VM, booting disk image
    qemu.rhel87: The VM will be run headless, without a GUI. If you want to
    qemu.rhel87: view the screen of the VM, connect via VNC without a password to
    qemu.rhel87: vnc://127.0.0.1:5934
==> qemu.rhel87: Overriding default Qemu arguments with qemuargs template option...
==> qemu.rhel87: Waiting 3m0s for boot...
==> qemu.rhel87: Connecting to VM via VNC (127.0.0.1:5934)
==> qemu.rhel87: Typing the boot commands over VNC...
    qemu.rhel87: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.rhel87: Using SSH communicator to connect: 127.0.0.1
==> qemu.rhel87: Waiting for SSH to become available...
==> qemu.rhel87: Connected to SSH!
==> qemu.rhel87: Gracefully halting virtual machine...
==> qemu.rhel87: Converting hard drive...
Build 'qemu.rhel87' finished after 3 minutes 48 seconds.
```
