

> [!IMPORTANT]
> You will need a mouse, keyboard, usb drive, and a usb hub (preferably with power passthru, but not required).

# This is a unique take of Steam OS on linux.

## Installation

Download CachyOS from [here]().
> + Choose systemd bootloader
> + Choose online install
> + Leave the rest of the options default.

Once installed open Konsole,copy and pasting commands below.
> [!IMPORTANT]
> When asked choose deckify with `HHD session`

```sh
sudo pacman -Syu
sudo pacman - S --noconfirm ryzenadj yay meson base-devel ninja podman libgudev rust
sudo pacman -S  --noconfirm octopi
sudo pacman -S  --nocomfirm trizen
sudo flatpak install flathub me.timschneeberger.jdsp4linux
```
```sh
yay -S arch-gaming-meta
 yay -S gamescope-plus lib32-gamescope-plus dxvk-bin  cmake
curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh
sudo pamac install steam-deckify
#Install ASUSCTL
git clone https://github.com/flukejones/asusctl.git
cd asusctl
make && sudo make install
# Install Simple Decky TDP
curl -L https://github.com/aarron-lee/SimpleDeckyTDP/raw/main/install.sh | sh

```
> [!TIP]
> + Return to game mode is located at
> + `/etc/skel`
> + just copy to your Desktop

> [!IMPORTANT]
> ## Once installed open steam and log into your account.
>
> Open `System Settings` then go to `Startup and Shutdown`, at the bottom center left of the window click behaviour. Then and make sure log in again after logging off is checked.
Go to Home
> + make sure show hidden files is checked
> + Goto .steam
> + look for registy.vdf
> + I have included an example .vdf
> + You have to add "CompletedOOBE" "1"
> + This has to be added in the same potition as it is in the example .vdf.
> + Save

> [!IMPORTANT]
> ## Nested Desktop
> > Go back to `Manjaro-SteamOS` folder open terminal and paste this 
   
```
     chmod +x ./Nested_desktop.sh
```
> + Add as non steam game
> + If you install steamdb from deckyloader you can add artwork to the shortcut
> + note touch is not working at present in nested desktop 

> [!IMPORTANT]
> **Reboot**
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
>   + move the `dolby.irs` file to `home/.var/app/me.timschneeberger.jdsp4linux/irs`( make sure hidden files are selected to find it)
>   + Goto jamesdsp in steam and select the dolby irs from the list and enable it


> [!TIP]
> Your fan curves can get adjusted in asusctl

>[!TIP]
> + You have a package manager called octopi this is great for updating and installing packages from the ARU.
> + enable support in the Octopi settings by accessing the menu under Tools->Options. Then go to the AUR tab and enable trizen. You may also want to enable "Search for outdated AUR packages" to allow Octopi to update AUR packages.

>[!TIP]
> # Change steam prompts to match allys
> + In game mode open `deckyloader` (plug symbol bottom right side steam menu)
> + Install `CCS Loader` from list of apps
> +  go to `home/homebrew/themes`
> +  Open a terminal inside themes folder and copy and paste this .
 ```
      git clone https://github.com/semakusut/SBP-ROG-Ally.git
```

 ## ASUSCTL for fans and system settings
![Screenshot_20240426_163007](https://github.com/ripplingsnake/Manjaro-SteamOS/assets/144014277/6cc3f4e2-4253-4450-80ad-5932ac54500a)

 
![Screenshot_20240426_162849-1](https://github.com/ripplingsnake/Manjaro-SteamOS/assets/144014277/c59556a4-47e9-4e86-99dc-46f76d322fe6)


## James DSP for sound 
![Screenshot_20240426_163057](https://github.com/ripplingsnake/Manjaro-SteamOS/assets/144014277/51ac3db6-9f96-43d6-90ea-51ad811f3d6a)

![Screenshot_20240426_163116](https://github.com/ripplingsnake/Manjaro-SteamOS/assets/144014277/d785df2d-9c77-4d74-9176-4ab358cf9d8d)








<img width="960" alt="Screenshot_20240302_165615" src="https://github.com/ripplingsnake/Manjaro-SteamOS/assets/144014277/49c9ae42-ddb9-42aa-aef8-08c63910ec77">





