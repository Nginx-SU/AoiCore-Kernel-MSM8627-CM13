#!/bin/bash
echo "AoiCore+.zip Builder"
echo "#######Nicklas Van Dam#######"
echo "###Starting...###"
cd /home/nicklas/AoiCore+_EXT
mkdir work
cp Aoi_Core+.zip work
cd work
unzip Aoi_Core+.zip
rm tmp/kernel/boot.img-zImage
cd /home/nicklas/AoiCore+_output
mv zImage /home/nicklas/AoiCore+_EXT/work/tmp/kernel/boot.img-zImage
cd /home/nicklas/AoiCore+_EXT/work/system/lib
mkdir modules
cd /home/nicklas/AoiCore+_output
mv *.ko /home/nicklas/AoiCore+_EXT/work/system/lib/modules
cd /home/nicklas/AoiCore+_EXT/work
rm Aoi_Core+.zip
echo "###Creating AoiCore+.zip###"
zip -r Aoi_Core+_v1.5.5-nicki *
rm -rfv META-INF
rm -rfv system 
rm -rfv tmp
mv Aoi_Core+_v1.5.5-nicki /home/nicklas/Aoi_Core+_v1.5.9-nicki.zip
echo "###Cleaning..."
cd /home/nicklas/AoiCore+_EXT
rm -rfv work
cd /home/nicklas
rm -rvf AoiCore+_output
rm -rvf AoiCore+_output
