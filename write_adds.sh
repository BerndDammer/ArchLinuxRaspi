echo "******************* define variables"

LIB11=bellsoft-jdk11.0.2-linux-arm32-vfp-hflt.tar.gz
LIB11V=jdk-11.0.2

LIB9=bellsoft-jre9.0.4-linux-arm32-vfp-hflt.tar.gz
LIB9V=jre-9.0.4

echo "******************* create dirs in opt"
mkdir sdx2/opt/as
mkdir sdx2/opt/as/apps
mkdir sdx2/opt/as



# create variables

tar -xzvpf gluon.tar.gz -C sdx2/opt/as
tar -xzvpf sunjre.tar.gz -C sdx2/opt/as
tar -xzvpf ${LIB11} -C sdx2/opt/as
mv sdx2/opt/as/${LIB11V} sdx2/opt/as/lib11

