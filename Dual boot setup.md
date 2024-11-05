# Dual boot set up
- Goto windows disk managment

- Select the largest partition and shrink it to the size you want for your Cachyos install


- Insert Cachyos usb and Boot into the ISO setup your wifi and then click the Launch Installer button

- Set your preferred Language and Region/Timezone.

- Configure your Keyboard Layout.

- Select Manual partitioning.

 - Create a new partition in free space you created in windows with the following:
Size: 2048MiB
Filesystem: FAT32
Mount point: /boot
Flags: boot


- Create another partition for root:
Size: At least 20000MiB
Filesystem: Any, refer Filesystem
Mount point: /
Flags: (leave empty) 
- This partition is your main one so set it to use all the remaining space
   
- Double check that Install boot loader on: is pointing to /boot ie select the new fat 2048 MB partition you created to install cachyos 

- Reboot to select windows or cachyos hold down volume up button during boot and use dpad and A button to select windows boot manager or Cachyos 

Enjoy!
