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
sudo cp -r 99-splitlock.conf /etc/sysctl.d


curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh
```

> [!IMPORTANT]
> + To stop steam game mode from reverting to stable if you choose beta.

> [!TIP]
> + TDP and Fans can be controlled through HHD in Decky plugin or if you choose Rouge-enemy and asusctl (my recommend way) through asusctl


>[!TIP]
> # Change steam prompts to match allys
> + In game mode open `deckyloader` (plug symbol bottom right side steam menu)
> + Install `CCS Loader` from list of apps
> +  Exit to desktop open a terminal and paste the following
> +  
 ```
      cd $HOME/homebrew/themes && git clone https://github.com/semakusut/SBP-ROG-Ally.git

```
>[!TIP]
> Bauh is the prefered package manager its in your App list use the search function  to find the package you want. This manager will also update apps and packages.

> [!IMPORTANT]
> ## Install ROGUE ENEMY (For controls and gyro and led) and remove HHD 
> + For those who want to use Rogue Enemy Controls and TDP 
```
curl -L https://github.com/hhd-dev/hhd/raw/master/uninstall.sh | sh
sudo pacman -Rdd hhd hhd-ui adjustor
cd CachyOSsteam-edition
sudo pacman -U *.tar.zst
sudo pacman -S asusctl rog-control-center
sudo rm -Rdd /home/gamer/homebrew/plugins/hhd-decky
sudo systemctl enable --now rogue-enemy
```
> [!IMPORTANT]
> + Goto
> + /etc/Rogueenemy folder
> + open conf.conf file and change touchbar =true to false
> + Save
> + reboot
> + Your fans are then controlled by Asusctl, Rog app in your desktop app list
> + Hold left `cc` buttton to cycle through power modes
> + Blue = quiet profile, 10 watts 
> + Green = balanced profile, 15 with boost to 19 if needed. 
> + Red = performance , max power and performance  
 >The Ally will now auto switch power profiles for AC or DC

[!INFORMATION]
> + Useful commands
> + sudo pacman -Syu ( system update)
> + sudo pacman -S ( install a package)
> + sudo pacman -R ( remove a package)
> + sudo sdboot-manage gen save and update and changes you make to kernel

[!INFORMATION]

## SteamGames (WIP)
> + Move the steamgames.py file some where safe and move the steamgames.desktop to your desktop
> + Make both files executable (right click and select properties, or chmod +x them)
> + Copy and paste the location of your steamgames.py into the steamgames.desktop file where it asks you to specify path.
> + when run it will ask you to specify the directory of your non steam games and auto add them to steam and create a .desktop file for the game
> + you may need to run sudo pacman -S vdf 






