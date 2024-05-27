> [!IMPORTANT]
> You will need a mouse, keyboard, usb drive, and a usb hub (preferably with power passthru, but not required).
> At the moment you will need ethernet for install stage
> Leave the ethernet connection connected until steam boots! it will display a black screen while setting up files and needs the connection!.
> 

# This is a unique take of Steam OS on linux.

## Installation

Download CachyOS from [here] (https://iso.cachyos.org/240512-deckify/cachyos-deckify-linux-240512.iso).
> + Install, etcher  is recommended to create USB

```sh
git clone https://github.com/ripplingsnake/CachyOSsteam-edition.git
cd CachyOSsteam-edition

sudo pacman -S cachyos-gaming-meta bauh rust fuse2 yay
yay -S ryzenadj


```

> [!IMPORTANT]
> ## Close terminal and reopen before running other commands to allow rust to update

```
 cd CachyOSsteam-edition
sudo cp -r 99-splitlock.conf /etc/sysctl.d
sudo cp -r $HOME/CachyOSsteam-edition/pipewire.conf.d /etc/pipewire

```


> [!TIP]
> + TDP and Fans can be controlled through  PowerControl and asusctl respectivly
> + The Powercontrol.sh need to be made executable (right click/properties/permissions check file is executable)
> + Copy it to a safe location like your documents folder.
> + Add it as a non steam game.
> + You will have a tpd slider from 5-50 watts as you move the slider up it will auto set the correct power profile.
> + Once set close the program the setting will stay until next reboot it will set default tdp to 10 watts
> + This was made simple as i wanted an easy way to set the power profiles and tdp and i dont use Deckyloader.
> + ## AUDIO
> + When you open sound in desktop you will see a new audio sink with atmos 7.1 sound.
> + To use this set the normal H17/19 family speakers to 100% or above.
> + Then start game mode goto sound and select the virtual sink. enjoy





[!INFORMATION]
> + Useful commands
> + sudo pacman -Syu ( system update)
> + sudo pacman -S ( install a package)
> + sudo pacman -R ( remove a package)
> + sudo sdboot-manage gen save and update and changes you make to kernel








