#!/bin/bash
# Based on script from https://github.com/joeknock90/Single-GPU-Passthrough/blob/3b788c6b2219f8bd5eb585371d17db4abd192742/README.md

# This script is intended to be used when the host is intended to be headless 
# Helpful to read output when debugging
set -x

# Assign static hugepages
# 12GB, assuming 2M hugepages
echo 6144 > /proc/sys/vm/nr_hugepages

# Unbind VTconsoles
echo 0 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

# Disable framebuffer with efifb=off kernel paramter or use the following command:
# echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind

# Avoid race condition
sleep 2

# remove modules that the GPU is bound to
modprobe -r nouveau
modprobe -r nvidiafb 

# The following use of nodedev-detach on pci devices is only needed if you're never using these devices on the host
# If you plan on switching the devices between the host and guest, use the managed attribute in libvirt XML instead

# Detach GPU (and audio function)
virsh nodedev-detach pci_0000_09_00_0
virsh nodedev-detach pci_0000_09_00_1

# Detach NIC
virsh nodedev-detach pci_0000_05_00_0

# Detach USB controllers
virsh nodedev-detach pci_0000_11_00_3
