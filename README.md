[![pre-commit](https://github.com/ibm-xaas/rhel-to-qcow2/actions/workflows/pre-commit.yml/badge.svg?branch=main)](https://github.com/ibm-xaas/rhel-to-qcow2/actions/workflows/pre-commit.yml)
[![@seungyeop's Holopin board](https://holopin.me/seungyeop)](https://holopin.io/@seungyeop)
[![fed-dev-hero](https://images.credly.com/size/220x220/images/2b1a505f-ece9-445b-b830-38ef5141b5a3/IBM-Federated-Developer-Hero.png)](https://www.credly.com/badges/406d727d-0799-4de7-88fe-b0ef2528375a/public_url)

# rhel-to-qcow2
Redhat Enterprise Linux and convert to qcow2 format

*Tested and can be built only from Intel based MBP (x86_64) with the accelerator hvf due to rhel9.x deprecated qemu64 cpu model*

* &#9745; rhel8.7 : OK, not necessary to add the accelerator but why not if the rest of them can be built only with the accelerator
* &#9745; rhel9.0 : https://bugzilla.redhat.com/show_bug.cgi?id=2060839
* &#9745; rhel9.1 : https://bugzilla.redhat.com/show_bug.cgi?id=2060839

# Test
```
$ time ./build.sh
qemu.rhel87: output will be in this color.
qemu.rhel90: output will be in this color.
qemu.rhel91: output will be in this color.

==> qemu.rhel87: Retrieving ISO
==> qemu.rhel91: Retrieving ISO
==> qemu.rhel90: Retrieving ISO
==> qemu.rhel87: Trying /Users/seungyeop/Downloads/rhel-8.7-x86_64-kvm.qcow2
==> qemu.rhel91: Trying /Users/seungyeop/Downloads/rhel-baseos-9.1-x86_64-kvm.qcow2
==> qemu.rhel90: Trying /Users/seungyeop/Downloads/rhel-baseos-9.0-x86_64-kvm.qcow2
==> qemu.rhel91: Trying /Users/seungyeop/Downloads/rhel-baseos-9.1-x86_64-kvm.qcow2?checksum=sha256%3A8a24976ed98ac43b165369353741bb3a4c72fac9ad1cd7d564956ffe8a89c968
==> qemu.rhel87: Trying /Users/seungyeop/Downloads/rhel-8.7-x86_64-kvm.qcow2?checksum=sha256%3A9b5718977832213cf07dc17a9ba3ad171b21576840064ecf2c395fa7642412d2
==> qemu.rhel90: Trying /Users/seungyeop/Downloads/rhel-baseos-9.0-x86_64-kvm.qcow2?checksum=sha256%3A92862e085e4d5690cfa57de7155aa29bfdf21feec3d46dd4b61ca63293312af7
==> qemu.rhel90: /Users/seungyeop/Downloads/rhel-baseos-9.0-x86_64-kvm.qcow2?checksum=sha256%3A92862e085e4d5690cfa57de7155aa29bfdf21feec3d46dd4b61ca63293312af7 => /Users/seungyeop/Downloads/rhel-baseos-9.0-x86_64-kvm.qcow2
    qemu.rhel90: File extension already matches desired output format. Skipping qemu-img convert step
==> qemu.rhel91: /Users/seungyeop/Downloads/rhel-baseos-9.1-x86_64-kvm.qcow2?checksum=sha256%3A8a24976ed98ac43b165369353741bb3a4c72fac9ad1cd7d564956ffe8a89c968 => /Users/seungyeop/Downloads/rhel-baseos-9.1-x86_64-kvm.qcow2
    qemu.rhel91: File extension already matches desired output format. Skipping qemu-img convert step
==> qemu.rhel87: /Users/seungyeop/Downloads/rhel-8.7-x86_64-kvm.qcow2?checksum=sha256%3A9b5718977832213cf07dc17a9ba3ad171b21576840064ecf2c395fa7642412d2 => /Users/seungyeop/Downloads/rhel-8.7-x86_64-kvm.qcow2
    qemu.rhel87: File extension already matches desired output format. Skipping qemu-img convert step
==> qemu.rhel90: Resizing hard drive...
==> qemu.rhel91: Resizing hard drive...
==> qemu.rhel87: Resizing hard drive...
==> qemu.rhel87: Starting HTTP server on port 8619
==> qemu.rhel90: Starting HTTP server on port 8627
==> qemu.rhel91: Starting HTTP server on port 8298
==> qemu.rhel90: Found port for communicator (SSH, WinRM, etc): 4323.
==> qemu.rhel87: Found port for communicator (SSH, WinRM, etc): 3791.
==> qemu.rhel91: Found port for communicator (SSH, WinRM, etc): 3181.
==> qemu.rhel87: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.rhel90: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.rhel91: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.rhel90: Starting VM, booting disk image
==> qemu.rhel87: Starting VM, booting disk image
==> qemu.rhel91: Starting VM, booting disk image
    qemu.rhel90: The VM will be run headless, without a GUI. If you want to
    qemu.rhel90: view the screen of the VM, connect via VNC without a password to
    qemu.rhel90: vnc://127.0.0.1:5976
    qemu.rhel87: The VM will be run headless, without a GUI. If you want to
    qemu.rhel87: view the screen of the VM, connect via VNC without a password to
    qemu.rhel87: vnc://127.0.0.1:5940
    qemu.rhel91: The VM will be run headless, without a GUI. If you want to
    qemu.rhel91: view the screen of the VM, connect via VNC without a password to
    qemu.rhel91: vnc://127.0.0.1:5978
==> qemu.rhel90: Overriding default Qemu arguments with qemuargs template option...
==> qemu.rhel91: Overriding default Qemu arguments with qemuargs template option...
==> qemu.rhel87: Overriding default Qemu arguments with qemuargs template option...
==> qemu.rhel91: Waiting 1m0s for boot...
==> qemu.rhel90: Waiting 1m0s for boot...
==> qemu.rhel87: Waiting 1m0s for boot...
==> qemu.rhel91: Connecting to VM via VNC (127.0.0.1:5978)
==> qemu.rhel90: Connecting to VM via VNC (127.0.0.1:5976)
==> qemu.rhel87: Connecting to VM via VNC (127.0.0.1:5940)
==> qemu.rhel87: Typing the boot commands over VNC...
==> qemu.rhel90: Typing the boot commands over VNC...
==> qemu.rhel91: Typing the boot commands over VNC...
    qemu.rhel87: Not using a NetBridge -- skipping StepWaitGuestAddress
    qemu.rhel90: Not using a NetBridge -- skipping StepWaitGuestAddress
    qemu.rhel91: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.rhel90: Using SSH communicator to connect: 127.0.0.1
==> qemu.rhel87: Using SSH communicator to connect: 127.0.0.1
==> qemu.rhel91: Using SSH communicator to connect: 127.0.0.1
==> qemu.rhel87: Waiting for SSH to become available...
==> qemu.rhel90: Waiting for SSH to become available...
==> qemu.rhel91: Waiting for SSH to become available...
==> qemu.rhel87: Connected to SSH!
==> qemu.rhel87: Gracefully halting virtual machine...
==> qemu.rhel90: Connected to SSH!
==> qemu.rhel90: Gracefully halting virtual machine...
==> qemu.rhel91: Connected to SSH!
==> qemu.rhel91: Gracefully halting virtual machine...
==> qemu.rhel90: Converting hard drive...
==> qemu.rhel91: Converting hard drive...
==> qemu.rhel87: Converting hard drive...
Build 'qemu.rhel91' finished after 1 minute 13 seconds.
Build 'qemu.rhel90' finished after 1 minute 14 seconds.
Build 'qemu.rhel87' finished after 1 minute 15 seconds.

==> Wait completed after 1 minute 15 seconds

==> Builds finished. The artifacts of successful builds are:
--> qemu.rhel91: VM files in directory: output/rhel91
--> qemu.rhel90: VM files in directory: output/rhel90
--> qemu.rhel87: VM files in directory: output/rhel87

real    1m21.294s
user    0m41.399s
sys     1m37.543s
$
```
