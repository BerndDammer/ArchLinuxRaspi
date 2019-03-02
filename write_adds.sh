echo "******************* define variables"

LIB11=bellsoft-jdk11.0.2-linux-arm32-vfp-hflt.tar.gz
LIB11V=jdk-11.0.2

LIB9=bellsoft-jre9.0.4-linux-arm32-vfp-hflt.tar.gz
LIB9V=jre-9.0.4

echo "******************* create dirs in opt"
mkdir sdx2/opt/as
mkdir sdx2/opt/as/apps
mkdir sdx2/opt/as


echo "******************* write jre's"


tar -xzvpf gluon.tar.gz -C sdx2/opt/as
tar -xzvpf sunjre.tar.gz -C sdx2/opt/as

tar -xzvpf ${LIB9} -C sdx2/opt/as
mv sdx2/opt/as/${LIB9V} sdx2/opt/as/lib9

tar -xzvpf ${LIB11} -C sdx2/opt/as
mv sdx2/opt/as/${LIB11V} sdx2/opt/as/lib11

echo "******************* copy apps"

cp as.jar sdx2/opt/as/apps
cp watchmen.jar sdx2/opt/as/apps
cp Ensemble8.jar sdx2/opt/as/apps
cp Font2DTest.jar sdx2/opt/as/apps
cp Java2Demo.jar sdx2/opt/as/apps
cp SwingSet2.jar sdx2/opt/as/apps
cp ResourceRead14.jar sdx2/opt/as/apps

cp .xinitrc sdx2/home/alarm
cp install-alarm.sh sdx2/root

cp config.txt sdx1
# cp cmdline.txt sdx1

