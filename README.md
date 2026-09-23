# Halium Boot Package for Redmi Note 10 Pro / Pro Max (sweet)

This repository contains the build scripts, Device Tree Blob (DTB), Device Tree Compiler (DTC) binaries, and ramdisk image required to compile and assemble a **Halium 11.0 / Ubuntu Ports boot.img** for the **Xiaomi Redmi Note 10 Pro / Pro Max** (codename: `sweet`).

---

## 📂 Repository Contents

* **`build.sh`**: Shell script used to compile and package the kernel and ramdisk into a flashable boot image.
* **`deviceinfo`**: Halium-specific configuration file containing hardware parameters, architecture definitions, and cmdline arguments for `sweet`.
* **`halium-boot-ramdisk.img`**: Prebuilt Halium 11.0 boot ramdisk image.
* **`xiaomi-sweet.dtb`**: Device Tree Blob compiled specifically for the Snapdragon 732G (SM7150-AC) platform on Xiaomi `sweet`.
* **`dtc` / `dtc_ext`**: Device Tree Compiler binaries used during the build process to process device tree files.

---

## 🛠️ Requirements & Usage

### Prerequisites
* Linux environment (Ubuntu / Alpine / Arch)
* Git & Git LFS installed
* Basic Android image flashing tools (`fastboot`)

### Building the Boot Image

1. Clone the repository:
   ```bash
   git clone git@github.com:abdulkiqh-oss/halium_boot_sweet.git
   cd halium_boot_sweet

   chmod +x build.sh
   ./build.sh
   #to flash 
   fastboot flash boot boot.img
   #to try
   fastboot boot boot.img
⚠️ Notes

    Designed specifically for Halium 11.0 target systems (Ubuntu Touch / UBports).

    Make sure your device bootloader is unlocked before attempting to flash custom boot images.
