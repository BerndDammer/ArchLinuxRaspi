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
rm -f alarm.img


echo "*************** creating empty image"

dd if=/dev/zero of=alarm.img bs=1M count=7424 status=progress

# read iojeiofjiwof

echo "****************** make partition table"

# scriting style ???
sfdisk alarm.img <<EOF
2048,522240,C
524288,14680064,83
EOF

# checking partition table
fdisk -l alarm.img

# get the next free loop device name
echo "*********** mounting the loop"

LOOP=$(losetup -f)
echo "**************** next free loop name is" $LOOP

#echo press
#read

losetup -P ${LOOP} alarm.img

echo creating file systems
mkfs.vfat ${LOOP}p1
mkfs.ext4 ${LOOP}p2

echo mounting filesystems
mkdir sdx1
mkdir sdx2

mount ${LOOP}p1 sdx1
mount ${LOOP}p2 sdx2


