echo "******************* german keyboard"
loadkeys de

echo "******************* init pacman"
pacman-key --init
pacman-key --populate archlinuxarm

echo "******************* all system update"
pacman -Sy
pacman -Su


echo "******************* mc"
pacman -S mc

echo "******************* X"
pacman -S xorg
pacman -S xterm
pacman -S lxde
pacman -S xorg-xinit

echo "******************* audio adds"
pacman -S audacity
pacman -S alsa-lib
pacman -S alsa-utils

