# For AllyX users who want new MCU Powersave. Tdp RGB and fans, Discover Store and DLSS ENABLER!!!

# Please note after install to use dlss enabler with any of your games that use DLSS you must copy the following to your steam game and add it to the launch options!
Copy this text and change USER NAME to your name. Thats it you will have frame Gen!
```
/home/USER NAME/fgmod/fgmod %COMMAND%
```


After Downloading the Powercontrol.sh navigate to the download location and open a terminal and copy and paste the following to Install. The  one you choose will depend on if you want the power control version that uses deckyloader plugins , or Asusctl version, which doesnt...

```
chmod =x asusctl.sh
```
```
./asusctl.sh
```

```

chmod +x Powercontrol.sh
```
```
./Powercontrol.sh
```

# If using asusctl you will have a new app called rog control center , you can change fans rbg and power with this , also add it as non steam game to enable you to change between silent balanced or performance.
look around in the app and change your power pref when in battrey or ac mode , by default battrey mode is set to silent profile, i recommend balanced. also you can go into /etc/asusd/aura_1b4c.ron , scroll to the bottom and change sleep true to false this will stop leds flashing while in sleep and charging.

Reboot


