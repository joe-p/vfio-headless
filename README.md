# Links
* nvflash - https://www.techpowerup.com/download/nvidia-nvflash/
* VirtIO drivers - https://pve.proxmox.com/wiki/Windows_VirtIO_Drivers

# System
Motherboard: Gigabyte X570 AORUS PRO WIFI
CPU: AMD Ryzen 9 3900X
Memory: 16GB Crucial Ballistix Sport LT 3200 MHz DDR4 (x2)

# Notes
`vm.nr_hugepages = 6144` in `/etc/sysctl.conf` 

# IOMMU Groupings:
```
IOMMU Group 0 00:01.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
IOMMU Group 1 00:01.2 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse GPP Bridge [1022:1483]
IOMMU Group 2 00:02.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
IOMMU Group 3 00:03.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
IOMMU Group 4 00:03.1 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse GPP Bridge [1022:1483]
IOMMU Group 5 00:03.2 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse GPP Bridge [1022:1483]
IOMMU Group 6 00:04.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
IOMMU Group 7 00:05.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
IOMMU Group 8 00:07.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
IOMMU Group 9 00:07.1 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Internal PCIe GPP Bridge 0 to bus[E:B] [1022:1484]
IOMMU Group 10 00:08.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Host Bridge [1022:1482]
IOMMU Group 11 00:08.1 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Internal PCIe GPP Bridge 0 to bus[E:B] [1022:1484]
IOMMU Group 12 00:08.2 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Internal PCIe GPP Bridge 0 to bus[E:B] [1022:1484]
IOMMU Group 13 00:08.3 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Internal PCIe GPP Bridge 0 to bus[E:B] [1022:1484]
IOMMU Group 14 00:14.0 SMBus [0c05]: Advanced Micro Devices, Inc. [AMD] FCH SMBus Controller [1022:790b] (rev 61)
IOMMU Group 14 00:14.3 ISA bridge [0601]: Advanced Micro Devices, Inc. [AMD] FCH LPC Bridge [1022:790e] (rev 51)
IOMMU Group 15 00:18.0 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse Device 24: Function 0 [1022:1440]
IOMMU Group 15 00:18.1 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse Device 24: Function 1 [1022:1441]
IOMMU Group 15 00:18.2 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse Device 24: Function 2 [1022:1442]
IOMMU Group 15 00:18.3 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse Device 24: Function 3 [1022:1443]
IOMMU Group 15 00:18.4 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse Device 24: Function 4 [1022:1444]
IOMMU Group 15 00:18.5 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse Device 24: Function 5 [1022:1445]
IOMMU Group 15 00:18.6 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse Device 24: Function 6 [1022:1446]
IOMMU Group 15 00:18.7 Host bridge [0600]: Advanced Micro Devices, Inc. [AMD] Matisse Device 24: Function 7 [1022:1447]
IOMMU Group 16 01:00.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse Switch Upstream [1022:57ad]
IOMMU Group 17 02:01.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a3]
IOMMU Group 18 02:02.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a3]
IOMMU Group 19 02:03.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a3]
IOMMU Group 20 02:04.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a3]
IOMMU Group 21 02:08.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a4]
IOMMU Group 21 07:00.0 Non-Essential Instrumentation [1300]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Reserved SPP [1022:1485]
IOMMU Group 21 07:00.1 USB controller [0c03]: Advanced Micro Devices, Inc. [AMD] Matisse USB 3.0 Host Controller [1022:149c]
IOMMU Group 21 07:00.3 USB controller [0c03]: Advanced Micro Devices, Inc. [AMD] Matisse USB 3.0 Host Controller [1022:149c]
IOMMU Group 22 02:09.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a4]
IOMMU Group 22 08:00.0 SATA controller [0106]: Advanced Micro Devices, Inc. [AMD] FCH SATA Controller [AHCI mode] [1022:7901] (rev 51)
IOMMU Group 23 02:0a.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD] Matisse PCIe GPP Bridge [1022:57a4]
IOMMU Group 23 09:00.0 SATA controller [0106]: Advanced Micro Devices, Inc. [AMD] FCH SATA Controller [AHCI mode] [1022:7901] (rev 51)
IOMMU Group 24 03:00.0 SATA controller [0106]: ASMedia Technology Inc. ASM1062 Serial ATA Controller [1b21:0612] (rev 02)
IOMMU Group 25 04:00.0 Network controller [0280]: Intel Corporation Wi-Fi 6 AX200 [8086:2723] (rev 1a)
IOMMU Group 26 05:00.0 Ethernet controller [0200]: Intel Corporation I211 Gigabit Network Connection [8086:1539] (rev 03)
IOMMU Group 27 06:00.0 Ethernet controller [0200]: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller [10ec:8161] (rev 15)
IOMMU Group 28 0a:00.0 VGA compatible controller [0300]: NVIDIA Corporation GP102 [GeForce GTX 1080 Ti] [10de:1b06] (rev a1)
IOMMU Group 28 0a:00.1 Audio device [0403]: NVIDIA Corporation GP102 HDMI Audio Controller [10de:10ef] (rev a1)
IOMMU Group 29 0b:00.0 VGA compatible controller [0300]: NVIDIA Corporation GK208B [GeForce GT 710] [10de:128b] (rev a1)
IOMMU Group 29 0b:00.1 Audio device [0403]: NVIDIA Corporation GK208 HDMI/DP Audio Controller [10de:0e0f] (rev a1)
IOMMU Group 30 0c:00.0 Non-Essential Instrumentation [1300]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse PCIe Dummy Function [1022:148a]
IOMMU Group 31 0d:00.0 Non-Essential Instrumentation [1300]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Reserved SPP [1022:1485]
IOMMU Group 32 0d:00.1 Encryption controller [1080]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse Cryptographic Coprocessor PSPCPP [1022:1486]
IOMMU Group 33 0d:00.3 USB controller [0c03]: Advanced Micro Devices, Inc. [AMD] Matisse USB 3.0 Host Controller [1022:149c]
IOMMU Group 34 0d:00.4 Audio device [0403]: Advanced Micro Devices, Inc. [AMD] Starship/Matisse HD Audio Controller [1022:1487]
IOMMU Group 35 0e:00.0 SATA controller [0106]: Advanced Micro Devices, Inc. [AMD] FCH SATA Controller [AHCI mode] [1022:7901] (rev 51)
IOMMU Group 36 0f:00.0 SATA controller [0106]: Advanced Micro Devices, Inc. [AMD] FCH SATA Controller [AHCI mode] [1022:7901] (rev 51)
```