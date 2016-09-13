#!/bin/bash
echo "AoiCore+.zip Builder"
echo "#######Nicklas Van Dam#######"
echo "###Starting...###"
mkdir work
cp Aoi_Core+.zip work
cd work
unzip Aoi_Core+.zip
cd /home/nicklas
mv boot.img AoiCore+_EXT/work
cd /home/nicklas/AoiCore+_EXT/work/system/lib
mkdir modules
cd /home/nicklas/AoiCore+_output
mv *.ko /home/nicklas/AoiCore+_EXT/work/system/lib/modules
cd /home/nicklas/AoiCore+_EXT/work
rm Aoi_Core+.zip
echo "###Creating AoiCore+.zip###"
zip -r Aoi_Core+_v1.4.3-nicki.zip *
rm -rfv META-INF
rm -rfv system 
cd /home/nicklas/AoiCore+_EXT
rm -rfv work
mv Aoi_Core+_v1.4.3-nicki.zip /home/nicklas
cd /home/nicklas/AoiCore+_EXT
echo "###Done..." 
