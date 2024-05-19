

> [!IMPORTANT]
> You will need a mouse, keyboard, usb drive, and a usb hub (preferably with power passthru, but not required).
> At the moment you will need ethernet for install stage
> Leave the ethernet connection connected until steam boots! it will display a black screen while setting up files and needs the connection!.
> 

# This is a unique take of Steam OS on linux.

## Installation

Download CachyOS from [here] (https://iso.cachyos.org/240512-deckify/cachyos-deckify-linux-240512.iso).
> + Install, etcher  is recommended to create USB
> + Leave user name as gamer and xhoose your own password.
> + YOUR USER NAME MUST BE gamer
```sh
git clone https://github.com/ripplingsnake/CachyOSsteam-edition.git
cd CachyOSsteam-edition
sudo pacman -S  yay cachyos-gaming-meta
&&
sudo pacman -Rdd hhd hhd-ui adjustor
&&
yay -S jamesdsp-git 
&&
sudo cp -r 99-splitlock.conf /etc/sysctl.d
&&
curl -L https://github.com/hhd-dev/hhd/raw/master/install.sh | sh
&&
curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh
&&
curl -L https://github.com/hhd-dev/hhd-decky/raw/main/install.sh | sh
&&
sudo pacman -S -U *.tar.zst

```


> [!TIP]
> ## JamesDSP
> This is included to improve the sound.
> + It will be in your apps
> + You can add it as a non steam game
> + Its recommened to enable dynamic boost and boost pre amplification
> + move the `dolby.irs` file to `/home.config/jamesdsp/irs`( make sure hidden files are selected to find it)
> + Goto jamesdsp in steam and select the dolby irs from the list in Convolver and enable it.
> + Turn on Dynamic Bass Boost and adjust post gain to your liking.


> [!TIP]
> + Your fan curves can be set in the app rog control centre
>   Your power profile can be changed by holding down the left command key(Steammenu) your leds will flash a colour when the profile has been set 
>   + Blue = quiet
>   + Green = balanced
>   + Red = turbo


>[!TIP]
> # Change steam prompts to match allys
> + In game mode open `deckyloader` (plug symbol bottom right side steam menu)
> + Install `CCS Loader` from list of apps
> +  Exit to desktop open a terminal and paste the following 
 ```
      cd $HOME/homebrew/themes && git clone https://github.com/semakusut/SBP-ROG-Ally.git

```
[!info]
Useful Commands
to be finished 







