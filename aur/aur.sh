#!/bin/bash

# 1. Install Important Apps
yay -Sy --needed - <aur-imp.txt

# 2. Install Hardware Support
# openrgb, asusctl
yay -Sy --needed - <aur-hardware-support.txt

# 3. Install Ryzen CPU Tools
yay -Sy --needed - <aur-ryzen.txt 

# 4. Install Audio related tools
yay -Sy --needed - <aur-audio.txt

# 5. Install Developer Tools
yay -Sy --needed - <aur-android.txt

# 5.1 Install Microsoft libs for linux
yay -Sy --needed - <aur-hardware-support.txt

# 6. Install Steam and Wine related tools
yay -Sy --needed - <aur-steam.txt

# 7. Install Emulators from AUR
yay -Sy --needed - <aur-emulators.txt

# 8. Install openZFS support
yay -Sy --needed - <aur-zfs.txt

# 9. Install FreeIPA Support
yay -Sy --needed - <aur-freeipa.txt
