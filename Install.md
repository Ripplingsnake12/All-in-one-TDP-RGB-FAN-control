> [!IMPORTANT]
> You will need a mouse, keyboard, usb drive, and a usb hub (preferably with power passthru, but not required).
> At the moment you will need ethernet for install stage
> Leave the ethernet connection connected until steam boots! it will display a black screen while setting up files and needs the connection!.
> 

# This is a unique take of Steam OS on linux.

## Installation

Download CachyOS from [here] (https://iso.cachyos.org/240512-deckify/cachyos-deckify-linux-240512.iso).
> + Install, etcher  is recommended to create USB
> + Leave user name as gamer and choose your own password.
> + YOUR USER NAME MUST BE `gamer`
```sh
git clone https://github.com/ripplingsnake/CachyOSsteam-edition.git
cd CachyOSsteam-edition

sudo pacman -S  yay cachyos-gaming-meta bauh base-devel rust

sudo pacman -Rdd hhd hhd-ui adjustor
```

> [!IMPORTANT]
> ## Close terminal and reopen before running other commands to allow rust to update

```
yay -S jamesdsp-git sunshine-git

sudo cp -r 99-splitlock.conf /etc/sysctl.d

curl -L https://github.com/hhd-dev/hhd/raw/master/install.sh | sh

curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh

curl -L https://github.com/hhd-dev/hhd-decky/raw/main/install.sh | sh
```

> [!TIP]
> ## JamesDSP
> ```
> sudo cp -r /home/gamer/CachyOSsteam-edition/DolbyGameBalanced.irs /home/gamer/.config/jamesdsp/irs
> ```
> This is included to improve the sound.
> + It will be in your apps
> + You can add it as a non steam game `right click it in app list and chose Add to steam in options`
> + Its recommened to enable dynamic boost and boost pre amplification
> + Goto jamesdsp in steam and select the dolby irs from the list in Convolver and enable it.
> + goto setting in jamesdsp and enable allow control of volume sink 
> + Turn on Dynamic Bass Boost and adjust post gain to your liking.


> [!TIP]
> + TDP and Fans can be controlled through HHD in Decky plugin or if you choose Rouge and asusctl ( my fav ) through asusctl


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
> Mode switching is being worked on to provide a more stable solution, all distros are affected atm.
> `if you get a black screen going from gamemode to desktop just touch the screen`

>[!TIP]
> Bauh is the prefered package manager its in your App list

> [!IMPORTANT]
> ## ROGUE ENEMY
> + For those who want to use Rogue Enemy Controls and TDP 
```
curl -L https://github.com/hhd-dev/hhd/raw/master/uninstall.sh | sh
cd CachyOSsteam-edition
sudo pacman -U *.tar.zst
sudo pacman -S asusctl rog-control-center
sudo rm -Rdd /home/gamer/homebrew/plugins/hhd-decky
sudo systemctl enable --now rogue-enemy
```
> [!IMPORTANT]
> + GOTO
> + /etc/Rogue enemy folder
> + open conf and change touchbar =true to flase
> + reboot
> + Your fans are then controlled by Asusctl, Rog app in your desktop app list
> + Hold left `cc` buttton to cycle through power modes
> + Blue = quiet profile
> + Green = balanced profile
> + Red = turbo 









