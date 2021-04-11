#!/bin/bash
# Based on script from https://github.com/joeknock90/Single-GPU-Passthrough/blob/3b788c6b2219f8bd5eb585371d17db4abd192742/README.md

# This script is intended to be used when the host is intended to be headless 
# Helpful to read output when debugging
set -x

# Assign static hugepages
# 12GB, assuming 2M hugepages
echo 6144 > /proc/sys/vm/nr_hugepages

# The following use of nodedev-detach on pci devices is only needed if you're never using these devices on the host
# If you plan on switching the devices between the host and guest, use the managed attribute in libvirt XML instead

# Detach GPU (and audio function)
virsh nodedev-detach pci_0000_0a_00_0
virsh nodedev-detach pci_0000_0a_00_1

# Detach NIC
virsh nodedev-detach pci_0000_05_00_0

# Detach USB controller
virsh nodedev-detach pci_0000_0c_00_3
