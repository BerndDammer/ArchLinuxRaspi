
# create variables
ALI=ArchLinuxARM-rpi-2-latest.tar.gz

tar -xzvpf $ALI -C sdx2
mv sdx2/boot/* sdx1
