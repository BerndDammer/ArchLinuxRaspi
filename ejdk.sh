# create variables
EJDK=ejdk-8u201-linux-armv6-vfp-hflt.tar.gz

# prepare and unpack
mkdir ejdk
tar -xzvpf $EJDK -C ejdk

# create the full arm jre
JAVA_HOME=/usr/lib/jvm/default-java
export JAVA_HOME
ejdk/ejdk1.8.0_201/bin/jrecreate.sh --ejdk-home ejdk/ejdk1.8.0_201 -v --vm all --dest sunjre

#compress final result
tar -czf sunjre.tar.gz sunjre

#additionally combine gluon with
GLUON_ARC=armv6hf-sdk-8.60.9.zip
GLUON_DIR=armv6hf-sdk

tar -xzvpf $GLUON_ARC
cp sunjre gluon
cp {GLUON_DIR}/lib/* gluon/lib  
cp {GLUON_DIR}/lib/rt/lib/* gluon/lib/

tar -czf gluon.tar.gz gluon

