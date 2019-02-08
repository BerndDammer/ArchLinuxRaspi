umount sdx1
umount sdx2

echo "**** final losetup unmount must be done manually"
losetup --all
echo "losetup -d loop"
