echo "******************* german keyboard"
loadkeys de

echo "******************* init pacman"
pacman-key --init
pacman-key --populate archlinuxarm

echo "******************* all system update"
pacman --noconfirm -Sy
pacman --noconfirm -Su


echo "******************* mc"
pacman --noconfirm -S mc
pacman --noconfirm -S htop

echo "******************* X"
pacman --noconfirm -S xorg
pacman --noconfirm -S xterm
pacman --noconfirm -S lxde
pacman --noconfirm -S xorg-xinit
pacman --noconfirm -S xf86-video-fbdev

echo "******************* audio adds"
pacman --noconfirm -S audacity
pacman --noconfirm -S alsa-lib
pacman --noconfirm -S alsa-utils

