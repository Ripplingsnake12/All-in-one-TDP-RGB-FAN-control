# Geforece Now install on Linux far better than Electron version full controller support

Download Edge in discover store

Add Edge as non steam game

paste this into terminal
```
flatpak --user override --filesystem=/run/udev:ro com.microsoft.Edge

```
Find Microsoft Edge in steam and rename to Gforce Now

open Launch options delete everything there and pate this

```
"run" "--branch=stable" "--arch=x86_64" "--command=/app/bin/edge" "--file-forwarding" "com.microsoft.Edge" "@@u" "@@"--window-size=1024,640 --force-device-scale-factor=1.25 --device-scale-factor=1.25 --kiosk https://play.geforcenow.com

```
