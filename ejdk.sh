# create variables
EJDK=ejdk-8u201-linux-armv6-vfp-hflt.tar.gz
mkdir ejdk
tar -xzvpf $EJDK -C ejdk
ejdk/bin/jrecreate.sh --ejdk-home ejdk -v --vm all --dest sunjre
