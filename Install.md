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

sudo pacman -S cachyos-gaming-meta bauh base-devel rust fuse2


```

> [!IMPORTANT]
> ## Close terminal and reopen before running other commands to allow rust to update

```
cd cd CachyOSsteam-edition
sudo cp -r 99-splitlock.conf /etc/sysctl.d
sudo cp -r pipewire.conf.d /etc/pipewire

```


> [!TIP]
> + TDP and Fans can be controlled through  PowerControl and asusctl respectivly


>[!TIP]
> # Change steam prompts to match allys
> + In game mode open `deckyloader` (plug symbol bottom right side steam menu)
> + Install `CCS Loader` from list of apps
> +  Exit to desktop open a terminal and paste the following
> +  
 ```
      cd $HOME/homebrew/themes && git clone https://github.com/semakusut/SBP-ROG-Ally.git

```


[!INFORMATION]
> + Useful commands
> + sudo pacman -Syu ( system update)
> + sudo pacman -S ( install a package)
> + sudo pacman -R ( remove a package)
> + sudo sdboot-manage gen save and update and changes you make to kernel








