

> [!IMPORTANT]
> You will need a mouse, keyboard, usb drive, and a usb hub (preferably with power passthru, but not required).

# This is a unique take of Steam OS on linux.

## Installation

Download CachyOS from [here](https://iso.cachyos.org/240401/cachyos-kde-linux-240401.iso).
> + Choose systemd bootloader
> + Choose online install
> + Leave the rest of the options default.
> Once installed open Terminal, copy and paste the following commands below.
```sh
git clone https://github.com/ripplingsnake/CachyOSsteam-edition.git
sudo systemctl enable --now bluetooth
sudo pacman - S --noconfirm yay meson base-devel ninja podman libgudev rust cachyos-gaming-meta gamescope-plus 
curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh
yay -S jamesdsp hhd hhd-ui adjustor gamescope-session-steam-git
sudo systemctl enable hhd@$(whoami)
curl -L https://github.com/hhd-dev/hhd-decky/raw/main/install.sh | sh
cd CachyOSsteam-edition
sudo pacman -U cachyos-deckify-1-6-any.pkg.tar.zst
sudo cp -r /etc/skel/Desktop/steamos-gamemode.desktop $HOME/Desktop
steam

```

> [!IMPORTANT]
> **Reboot only after logging into and settng up steam**
> 

> [!IMPORTANT]
> ## To fix steam wifi speeds
>```
> sudo nano .steam/steam/steam_dev.cfg
> ```
> + copy this into terminal then `cntl + o` then `enter` then `cntl + x`

```
@DownloadRatelmprovementToAddAnother
Connection 1.0
@nClientDownloadEnableHTTP2PlatformLin
ux O
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
> Your fan curves and TDP can be set  in HHD in decky loader


>[!TIP]
> # Change steam prompts to match allys
> + In game mode open `deckyloader` (plug symbol bottom right side steam menu)
> + Install `CCS Loader` from list of apps
> +  
 ```
      cd $HOME/homebrew/themes && git clone https://github.com/semakusut/SBP-ROG-Ally.git

```







