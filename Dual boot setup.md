
# Dual boot set up
<!-- You have to disable Windows encryption first. -->
- Goto windows disk managment

- Select the largest partition and shrink it to the size you want for your Cachyos install


    - Insert cachyos USB into the ally
    - Hold left volume button down to enter bios and change first boot option to your Cachyos USB
    - Disable secure boot
    - Save and exit bios
    -   Boot into the ISO and click the Launch Installer button
    - Set your preferred Language and Region/Timezone.
    - Configure your Keyboard Layout.
    - Select Manual partitioning.
- Create a new partition with the following:
    - Size: 2048MiB
    - Filesystem: FAT32
    - Mount point:
    ```

     /boot
    ```
    - Flags: boot

- Create another partition for root:
    - Size: At least 20000MiB
    - Filesystem: btrfs
    - Mount point:
    ```
    -   /
    ```
    - Flags:
      
- This partition is your main one so set it to use all the remaining space 
Double check that Install boot loader on: is pointing to /boot ie select the new fat 2048 MB partition you created

Reboot to select windows or cachyos hold down volume up button during boot and use dpad and A button to select windows boot manager or Cachyos 

Enjoy!

