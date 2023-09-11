#!/bin/bash
# 1.gnome -
sudo pacman -S libsecret gnome-keyring keychain seahorse gnome-tweaks gnome-terminal gnome-themes-extra gnome-firmware gparted archinstall neofetch clonezilla dosfstools jfsutils f2fs-tools btrfs-progs exfatprogs ntfs-3g reiserfsprogs udftools xfsprogs nilfs-utils polkit gpart mtools

sudo pacman -S cni-plugins apparmor fuse-overlayfs passt podman-compose podman-docker clevis dmidecode python-systemd catimg chafa feh jp2a nitrogen w3m xdotool xorg-xhost xorg-xrandr xorg-xwininfo lsof rsync smtp-forwarder

yay -S libretro-beetle-pce-fast libretro-beetle-psx libretro-blastem libretro-citra libretro-flycast libretro-gambatte libretro-mgba libretro-nestopia libretro-parallel-n64 libretro-picodrive python-lsp-server dblatex gnuchess texlive-latexextra python-pystemmer python-fastimport python-gpgme python-paramiko python-fastimport python-gpgme openmp libgit2-glib-docs squashfs-tools evolution-bogofilter evolution-spamassassin highlight python-black yapf python-matplotlib

yay -S --needed python-brotli python-fs python-lxml python-lz4 python-matplotlib python-pyqt5 python-reportlab python-scipy python-sympy python-uharfbuzz python-unicodedata2 python-zopfli python-railroad-diagrams python-mccabe python-pycodestyle python-pydocstyle python-pyflakes python-pylint python-rope autopep8 flake8 yapf python-whatthepatch psutils perl-tk biber razor tk pyside2 pyside6 python-pyqt6 python-wxpython python-cairocffi python-tornado texlive-binextra python-tokenize-rt python-aiohttp python-colorama xboard python-requests-toolbelt python-psycopg2 python-httplib2 python-pyzmq python-keyring python-virtualenv gunicorn python-aiodns python-cchardet

# File System Support
sudo pacman -S exfatprogs f2fs-tools dosfstools mtools jfsutils cryptsetup lvm2 util-linux nilfs-utils ntfs-3g reiserfsprogs udftools xfsprogs
yay -S hfsutils hfsprogs

# 2. Pipewire
sudo pacman -S easyeffects gst-plugin-pipewire helvum pipewire-docs pipewire-ffado pipewire-jack pipewire-pulse

# 2. Console Editors
sudo pacman -S gedit vi vim nano

#2.Pacman tools -
sudo pacman -S git base-devel net-tools github-cli

#3. Setting up Yay
cd /opt
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay --save --answerdiff None --answerclean None --removemake

# 3. Kernel -
sudo pacman -S linux-headers directx-headers ffnvcodec-headers linux-lts-headers linux-hardened-headers linux-zen-headers nginx-mod-headers-more vulkan-headers opencl-headers mako

# 3. Securboot-
sudo pacman -S dkms sbsigntools sbctl efitools refind

#4. cockpit -
sudo pacman -S cockpit cockpit-machines cockpit-packagekit cockpit-pcp cockpit-podman cockpit-storaged
sudo ln -sfn /dev/null /etc/motd.d/cockpit

#5. fonts -
sudo pacman -S --needed ttf-cascadia-code adobe-source-code-pro-fonts adobe-source-han-sans-jp-fonts adobe-source-sans-fonts birdfont cantarell-fonts gnu-free-fonts libertinus-font noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
yay -S ttf-ms-win11-auto

#7. nvidia -
sudo pacman -S --needed nvidia-dkms nvidia-cg-toolkit libxnvctrl ffnvcodec-headers egl-wayland cuda cudnn cuda-tools libvdpau nvidia-settings nvidia-utils nvtop opencl-nvidia xorg-xwayland wayland-utils wayland-docs libva-vdpau-driver libvdpau-va-gl libva-utils mesa-demos lib32-mesa-demos gamemode mangohud lib32-mangohud lazarus glfw-x11 gamescope opengl-man-pages lib32-vulkan-driver
yay -S libva-nvidia-driver vkbasalt lib32-vkbasalt gamescope-plus steamos-compositor-plus

yay -S --needed gst-plugins-ugly flite pkcs11-helper kio-extras kdoctools kio-fuse breeze-gtk kcmutils

# 8. Networking -
sudo pacman -S --needed firewalld nautilus-share samba smb4k nfs-utils mkinitcpio-nfs-utils qemu-block-nfs
# 9. Security -
sudo pacman -S --needed audit apparmor python-notify2 python-psutil

# 9. Virtualization -
sudo pacman -S --needed qemu-full virt-manager swtpm

# 10. Ryzen -
yay -S --needed zenmonitor amdctl zenstates-git ryzen_smu-dkms-git

# 11. Editors -
yay -S --needed visual-studio-code-bin visual-studio-code-insiders-bin

# 12. Browsers -
sudo pacman -S --needed firefox chromium
yay -S --needed google-chrome microsoft-edge-stable

# 13. openrazer
yay -S --needed openrazer-meta razergenie
sudo gpasswd -a santoshganti plugdev

# 14. Hardware Acceleration
sudo pacman -S --needed qt6-shadertools vulkan-devel vkd3d vulkan-virtio lib32-vkd3d lib32-vulkan-virtio

# 15. Controller Firmware
yay -S --needed dualsensectl-git xboxdrv openrgb

# 16. Electron & chat
sudo pacman -S --needed electron
yay -S --needed discord_arch_electron zoom whatsie-git whatsapp-nativefier bluebubbles-bin

# 17. Wine
sudo pacman -S --needed wine winetricks
yay -S bottles

# 18.Gaming
sudo pacman -S --needed steam lutris gamescope steam-native-runtime
# Optional
sudo pacman -S --needed trash-cli lib32-jack lib32-libavtp lib32-libsamplerate lib32-libpulse lib32-speexdsp lib32-opencl-nvidia python-html5lib python-filelock python-redis gst-libav innoextract lib32-gamemode lib32-vkd3d vkd3d vulkan-tools wine xorg-xgamma lib32-librsvg lib32-libid3tag lib32-librsvg lib32-libwebp lib32-pipewire-jack lib32-pipewire-v4l2 lib32-libva-mesa-driver lib32-fluidsynth opencl-headers python-genshi python-pyopenssl lib32-v4l-utils cups dosbox foomatic-db foomatic-db-engine foomatic-db-nonfree antiword docx2txt libusb ipp-usb logrotate foomatic-db-ppds foomatic-db-nonfree-ppds python-hiredis

yay -S --needed ckb-next game-devices-dev icu69 libgnome-keyring replay-sorcery ttf-dejavu ttf-ubuntu-font-family breeze vkbasalt sxhkd llvm openmp

sudo flatpak install -y io.github.Foldex.AdwSteamGtk

# 19. Music Players
yay -S spotify cider-bin

# 20. Torrent Clients
sudo pacman -S deluge deluge-gtk python-graphviz python-bcrypt python-h2 python-priority python-pyserial geoip-database-extra libappindicator-gtk3 python-pygame

# 21. Passwords
sudo pacman -S keepassxc vault xclip wl-clipboard
yay -S 1password 1password-cli

# 22. Emulators
sudo pacman -S retroarch retroarch-assets-glui retroarch-assets-ozone retroarch-assets-xmb

yay -S yuzu-mainline-bin yuzu-early-access ryujinx-ava-bin xenia-git citra-qt-git melonds vbam-git libretro-mgba-git ppsspp-assets-git dosbox-staging flycast duckstation-git desmume-git cemu-bin xemu-git
yay -S dolphin-emu-git

# 23. Dotnet SDK
yay -S dotnet-sdk-bin dotnet-sdk-3.1-bin dotnet-sdk-6.0-bin dotnet-sdk-5.0-bin dotnet-sdk-bin
yay -S powershell-lts-bin azure-cli-bin

# 24. Backup Tools
sudo pacman -S timeshift

# 25. Btrfs tools and Snapper
sudo pacman -S snapper

# 26. Codecs
sudo pacman -S jasper lame libdca libdv gst-libav libtheora libvorbis libxv wavpack x264 xvidcore dvd+rw-tools dvdauthor dvgrab libmad libmpeg2 libdvdcss libdvdread libdvdnav exfat-utils fuse-exfat a52dec faac faad2 flac

yay -S alac-git

# Databases and Web Servers
sudo pacman -S postgresql nginx mariadb apache
yay -S mssql-servery

#################################################################
# Secure Boot

# 1. Move the existing bootloader from BOOTX64.EFI to GRUBX64.EFI
mv /boot/EFI/BOOT/BOOTX64.EFI /boot/EFI/BOOT/GRUBX64.EFI

# 2. Move the shim shared into Boot
cp /usr/share/shim-signed/shimx64.efi /boot/EFI/BOOT/BOOTX64.EFI
cp /usr/share/shim-signed/mmx64.efi /boot/EFI/BOOT/MMX64.EFI

# 3. Copy the previous signed keys
cp /etc/refind.d/keys/* /mnt/archinstall/etc/refind.d/keys

# 4. Make a boot entry
efibootmgr --unicode --disk /dev/nvme1n1 --part 1 --create --label "Arch Linux Secureboot" --loader /EFI/BOOT/BOOTx64.EFI

# 5. Sign the boot images
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/vmlinuz-linux /boot/vmlinuz-linux
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/vmlinuz-linux-lts /boot/vmlinuz-linux-lts
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/vmlinuz-linux-zen /boot/vmlinuz-linux-zen
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/vmlinuz-linux-hardened /boot/vmlinuz-linux-hardened
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/vmlinuz-linux-cachyos /boot/vmlinuz-linux-cachyos

# Sign the efi files
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/EFI/BOOT/GRUBx64.EFI /boot/EFI/BOOT/GRUBx64.EFI
sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output /boot/EFI/systemd/systemd-bootx64.efi /boot/EFI/systemd/systemd-bootx64.efi

# 6. Update DKMS Framework conf with the signing keys location

mok_signing_key=/etc/refind.d/keys/refind_local.key
mok_certificate=/etc/refind.d/keys/refind_local.cer
modprobe_on_install="true"

# 7. Add a pacman hook to sign kernels everytime there is an update

mkdir /etc/pacman.d/hooks/

# /etc/pacman.d/hooks/999-sign_kernel_for_secureboot.hook

cat <<-END
[Trigger]
Operation = Install
Operation = Upgrade
Type = Package
Target = linux
Target = linux-lts
Target = linux-hardened
Target = linux-zen
END

cat <<-END
[Action]
Description = Signing kernel with Machine Owner Key for Secure Boot
When = PostTransaction
Exec = /usr/bin/find /boot/ -maxdepth 1 -name 'vmlinuz-*' -exec /usr/bin/sh -c 'if ! /usr/bin/sbverify --list {} 2>/dev/null | /usr/bin/grep -q "signature certificates"; then /usr/bin/sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt --output {} {}; fi' ;
Depends = sbsigntools
Depends = findutils
Depends = grep
END

# Update the bootloader automatically
# /etc/pacman.d/hooks/80-secureboot.hook
cat <<-END
[Trigger]
Operation = Install
Operation = Upgrade
Type = Path
Target = usr/lib/systemd/boot/efi/systemd-boot*.efi
END

cat <<-END
[Action]
Description = Signing systemd-boot EFI binary for Secure Boot
When = PostTransaction
Exec = /bin/sh -c 'for i in "$@"; do sbsign --key /etc/refind.d/keys/refind_local.key --cert /etc/refind.d/keys/refind_local.crt "$i"; done;'
Depends = sh
Depends = sbsigntools
END

# Kernel Paramters
splash quiet lsm=landlock,lockdown,yama,integrity,apparmor,bpf security=apparmor nvidia_drm.modeset=1

# Cockpit
ln -sfn /dev/null /etc/motd.d/cockpit

#################################################################

# NVIDIA - Add a pacman hook to generate intrid everytime there is an update using mkinitpio

# /etc/pacman.d/hooks/nvidia.hook
cat <<-END
[Trigger]
Operation=Install
Operation=Upgrade
Operation=Remove
Type=Package
Target=nvidia-dkms
Target=linux
Target=linux-lts
END

# Change the linux part above and in the Exec line if a different kernel is used
cat <<-END
[Action]
Description=Update NVIDIA module in initcpio
Depends=mkinitcpio
When=PostTransaction
NeedsTargets
Exec=/bin/sh -c 'while read -r trg; do case $trg in linux) exit 0; esac; done; /usr/bin/mkinitcpio -P'
END

# Enable Wayland on Nvidia

# 1.
sudo nano /etc/gdm/custom.conf
# WaylandEnable=true

# 2. Update mkinitcpio with nvidia modules
sudo nano /etc/mkinitcpio.conf
cat <<-END
MODULES=(btrfs nvidia nvidia_modeset nvidia_uvm nvidia_drm)
END
sudo mkinitcpio -P

# Add DRM Modset kernel flag
sudo gedit /boot/loader/entries/arch.conf
title Arch Linux
linux /vmlinuz-linux
initrd /amd-ucode.img
initrd /initramfs-linux.img
options root=/dev/nvme1 rw nvidia_drm.modeset=1

# sudo bootctl update

# Verify
echo $XDG_SESSION_TYPE

#################################################################

# Arch CHROOT
mount -t btrfs -o subvol=@ /dev/sdb2 /mnt/archinstall/
mount -t btrfs -o subvol=@home /dev/sdb2 /mnt/archinstall/home
mount -t btrfs -o subvol=@log /dev/sdb2 /mnt/archinstall/var/log
mount -t btrfs -o subvol=@pkg /dev/sdb2 /mnt/archinstall/var/cache/pacman/pkg
mount -t btrfs -o subvol=@.snapshots /dev/sdb2 /mnt/archinstall/.snapshots

mount /dev/sdb1 /mnt/archinstall/boot/
arch-chroot /mnt/archinstall

#################################################################

# Steam and Gaming Performance Improvements

# Update VM MAx MAP count
sudo nano /etc/sysctl.d/80-gamecompatibility.conf
"vm.max_map_count=2147483642"

# Apply the changes without reboot by running
sysctl --system

# Gaming Performance Article - https://wiki.archlinux.org/title/gaming#Improving_performance
# General Performance Article - https://wiki.archlinux.org/title/Improving_performance
# Wine Performance Article - https://wiki.archlinux.org/title/Wine#Performance

#################################################################

#Yubikey

sudo pacman -S age-plugin-yubikey pam-u2f yubico-c-client yubico-pam yubikey-full-disk-encryption yubikey-manager yubikey-manager-qt yubikey-personalization yubikey-touch-detector yubioath-desktop ykchalresp-nfc expect age rust-rage gst-plugins-ugly

#################################################################
# lib32 packages

sudo pacman -S lib32-aalib lib32-acl lib32-alsa-lib lib32-alsa-oss lib32-alsa-plugins lib32-at-spi2-core lib32-attr lib32-brotli lib32-bzip2 lib32-cairo lib32-clang lib32-cmocka lib32-colord lib32-cracklib lib32-curl lib32-dbus lib32-dbus-glib lib32-dconf lib32-duktape lib32-e2fsprogs lib32-fontconfig lib32-freeglut lib32-freetype2 lib32-gamemode lib32-glib-networking lib32-glib2 lib32-mangohud lib32-lz4 lib32-mesa-demos lib32-polkit lib32-virtualgl lib32-vulkan-icd-loader lib32-zstd lib32-zlib wine

lib32-boost lib32-boost-libs
