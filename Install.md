

> [!IMPORTANT]
> You will need a mouse, keyboard, usb drive, and a usb hub (preferably with power passthru, but not required).

# This is a unique take of Steam OS on linux.

## Installation

Download CachyOS from [here] (https://iso.cachyos.org/240512-deckify/cachyos-deckify-linux-240512.iso).
> + YOUR USER NAME MUST BE `gamer
```sh
git clone https://github.com/ripplingsnake/CachyOSsteam-edition.git

sudo pacman -S --noconfirm yay  
yay -S jamesdsp asusctl
cd CachyOSsteam-edition
sudo cp -r 99-splitlock.conf /etc/sysctl.d
cd


cd CachyOSsteam-edition
sudo pacman -U scx-scheds-git-0.1.8.r68.gd9ea53c-2-x86_64_v3.pkg.tar.zst
curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh

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
> Your fan curves can be set in the app rog control centre 


>[!TIP]
> # Change steam prompts to match allys
> + In game mode open `deckyloader` (plug symbol bottom right side steam menu)
> + Install `CCS Loader` from list of apps
> +  Exit to desktop open a terminal and paste the following 
 ```
      cd $HOME/homebrew/themes && git clone https://github.com/semakusut/SBP-ROG-Ally.git

```

> [!TIP]
> + Cachyos has a great kernel package manager(in your apps)
> + Recommened build is as follows
> + Click configure
> + Leave kernel as default Cachyos BORE +sched ext
> + Select tweak kernel options prior to build with menuconfig
> + Disable NUMA
> + Set Running tick rate to 500
> + Enable LTO set it to Thin
> + Hit execue
> + Config option will appear scroll to mitigations and press N to disable it , do the same to Virtuliation, press esc and Y to save, the kernel will now build.
> + This will take a bit of time, it will prompt you for a password before it completes if you leave this to long it will exit and you will have to start again!
> + Reboot after its done, as the ally is booting hit the volume up button a few times this will bring you into boot menu
> + press A
> + make sure the LTO kernel is selected , you only have to do this once your almost done
> + Final step is to go to Desktop navigate to root/etc/default look for `scx`
> + open it and change `SCX_SCHEDULER=` to `SCX_SCHEDULER=scx_lavd`
> + YOU NOW HAVE THE FASTER PERFORMING LOWEST LATANCY ROG ALLY GAMING EXPERIANCE!
> + ENJOY!!!!!!





