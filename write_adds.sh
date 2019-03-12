echo "******************* define variables"

LIB11=bellsoft-jdk11.0.2-linux-arm32-vfp-hflt.tar.gz
LIB11V=jdk-11.0.2

LIB9=bellsoft-jre9.0.4-linux-arm32-vfp-hflt.tar.gz
LIB9V=jre-9.0.4

echo "******************* create dirs in opt"
mkdir sdx2/opt/as
mkdir sdx2/opt/as/apps


echo "******************* write jre's"


tar -xzvpf gluon.tar.gz -C sdx2/opt/as
tar -xzvpf sunjre.tar.gz -C sdx2/opt/as

tar -xzvpf ${LIB9} -C sdx2/opt/as
mv sdx2/opt/as/${LIB9V} sdx2/opt/as/lib9

tar -xzvpf ${LIB11} -C sdx2/opt/as
mv sdx2/opt/as/${LIB11V} sdx2/opt/as/lib11

echo "******************* add fonts to liberica"

cp -r fonts sdx2/opt/as/lib9/lib
cp -r fonts sdx2/opt/as/lib11/lib

echo "******************* copy apps"

cp as.jar sdx2/opt/as/apps

cp watchmen.jar sdx2/opt/as/apps
cp applications/watchmen.json sdx2/opt/as/apps

cp Ensemble8.jar sdx2/opt/as/apps
cp Font2DTest.jar sdx2/opt/as/apps
cp Java2Demo.jar sdx2/opt/as/apps
cp SwingSet2.jar sdx2/opt/as/apps
cp ResourceRead14.jar sdx2/opt/as/apps

#cp .xinitrc sdx2/home/alarm
cp .xinitrc sdx2/root/
cp install-first.sh sdx2/root

cp config.txt sdx1
mkdir -p sdx2/usr/local/share/applications
cp applications/*.desktop sdx2/usr/local/share/applications

cp alahome/* sdx2/home/alarm

# cp cmdline.txt sdx1

echo "systemd control files"

cp systemd/*.service sdx2/usr/lib/systemd/system/

mkdir sdx1/as
