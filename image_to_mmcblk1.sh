DEV=/dev/mmcblk1
echo wrinting to ${DEV} 
echo "press enter or break with control break"

dd if=alarm.img of=${DEV} bs=1M status=progress
