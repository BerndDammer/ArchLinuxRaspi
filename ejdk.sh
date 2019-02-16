# create variables
EJDK=ejdk-8u201-linux-armv6-vfp-hflt.tar.gz
mkdir ejdk
tar -xzvpf $EJDK -C ejdk
ejdk/ejdk1.8.0_201/bin/jrecreate.sh --ejdk-home ejdk/ejdk1.8.0_201 -v --vm all --dest sunjre
