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


losetup -P ${LOOP} alarm.img

echo mounting filesystems
mkdir sdx1
mkdir sdx2

mount ${LOOP}p1 sdx1
mount ${LOOP}p2 sdx2


