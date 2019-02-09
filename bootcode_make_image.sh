LOOP=$(losetup -f)
echo next free loop name is $LOOP
echo firstp part is ${LOOP}p1

# echo 
# read

echo "++++++++++++ only root can run this script"
echo "++++++++++++ show all loop devices"
losetup --all



# cleanup
echo "*********** removing old stuff"
rmdir --ignore-fail-on-non-empty sdx1
rmdir --ignore-fail-on-non-empty sdx2
rm -f sdx1
rm -f sdx2
rm -f bootcode.img


echo "*************** creating empty image"

dd if=/dev/zero of=bootcode.img bs=1M count=512 status=progress


echo "****************** make partition table"

# scriting style ???
sfdisk bootcode.img <<EOF
2048,522240,C
524288,524288,83
EOF

# checking partition table
fdisk -l bootcode.img

# get the next free loop device name
echo "*********** mounting the loop"

LOOP=$(losetup -f)
echo "**************** next free loop name is" $LOOP

#echo press
#read

losetup -P ${LOOP} bootcode.img

echo creating file systems
mkfs.vfat ${LOOP}p1
mkfs.ext4 ${LOOP}p2

echo mounting filesystems
mkdir sdx1
mkdir sdx2

mount ${LOOP}p1 sdx1
mount ${LOOP}p2 sdx2

cp bootcode.bin sdx1

umount ${LOOP}p1 
umount ${LOOP}p2 

losetup -d ${LOOP}

