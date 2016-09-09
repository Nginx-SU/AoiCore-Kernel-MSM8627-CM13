#!/bin/bash
echo "
######################################################
#                                                    #
#           AoiCore+ Kernel Script Builder           #
#                                                    #
#                Nicklas Van Dam @XDA                #
#                                                    #
######################################################"

echo "###cleaning old build"

make clean && make mrproper

echo "
###Extracting AoiCore+ EXT"

cd /home/nicklas
rm android/kernel/Makefile
cp AoiCore+_EXT/Makefile android/kernel/Makefile
rm android/kernel/arch/arm/Kconfig
cp AoiCore+_EXT/arch/arm/Kconfig android/kernel/arch/arm/Kconfig
rm android/kernel/arch/arm/Makefile
cp AoiCore+_EXT/arch/arm/Makefile android/kernel/arch/arm/Makefile
rm android/kernel/arch/arm/configs/cyanogenmod_nicki_defconfig
cp AoiCore+_EXT/arch/arm/configs/cyanogenmod_nicki_defconfig android/kernel/arch/arm/configs/cyanogenmod_nicki_defconfig
rm android/kernel/arch/arm/include/asm/xor.h
cp AoiCore+_EXT/arch/arm/include/asm/xor.h android/kernel/arch/arm/include/asm/xor.h
rm android/kernel/arch/arm/include/asm/rwsem.h
cp AoiCore+_EXT/arch/arm/include/asm/rwsem.h android/kernel/arch/arm/include/asm/rwsem.h
rm android/kernel/arch/arm/kernel/Makefile
cp AoiCore+_EXT/arch/arm/kernel/Makefile android/kernel/arch/arm/kernel/Makefile
cp AoiCore+_EXT/arch/arm/kernel/auto_hotplug.c android/kernel/arch/arm/kernel/auto_hotplug.c
rm android/kernel/arch/arm/lib/Makefile 
cp AoiCore+_EXT/arch/arm/lib/Makefile android/kernel/arch/arm/lib/Makefile
cp AoiCore+_EXT/arch/arm/lib/xor-neon.c android/kernel/arch/arm/lib/xor-neon.c
rm android/kernel/arch/arm/vfp/Makefile
cp AoiCore+_EXT/arch/arm/vfp/Makefile android/kernel/arch/arm/vfp/Makefile
rm android/kernel/arch/arm/vfp/vfphw.S
cp AoiCore+_EXT/arch/arm/vfp/vfphw.S android/kernel/arch/arm/vfp/vfphw.S
rm android/kernel/arch/arm/vfp/vfpmodule.c
cp AoiCore+_EXT/arch/arm/vfp/vfpmodule.c android/kernel/arch/arm/vfp/vfpmodule.c
rm android/kernel/arch/arm/mach-msm/acpuclock-8627.c
cp AoiCore+_EXT/arch/arm/mach-msm/acpuclock-8627.c android/kernel/arch/arm/mach-msm/acpuclock-8627.c
rm android/kernel/arch/arm/mach-msm/dma_test.c
cp AoiCore+_EXT/arch/arm/mach-msm/dma_test.c android/kernel/arch/arm/mach-msm/dma_test.c
cp AoiCore+_EXT/arch/arm/mach-msm/fastchg.c android/kernel/arch/arm/mach-msm/fastchg.c
rm android/kernel/arch/arm/mach-msm/Kconfig
cp AoiCore+_EXT/arch/arm/mach-msm/Kconfig android/kernel/arch/arm/mach-msm/Kconfig
rm android/kernel/arch/arm/mach-msm/Makefile
cp AoiCore+_EXT/arch/arm/mach-msm/Makefile android/kernel/arch/arm/mach-msm/Makefile
rm android/kernel/block/Kconfig.iosched
cp AoiCore+_EXT/block/Kconfig.iosched android/kernel/block/Kconfig.iosched
rm android/kernel/block/Makefile
cp AoiCore+_EXT/block/Makefile android/kernel/block/Makefile
cp AoiCore+_EXT/block/fifo-iosched.c android/kernel/block/fifo-iosched.c
cp AoiCore+_EXT/block/fiops-iosched.c android/kernel/block/fiops-iosched.c
cp AoiCore+_EXT/block/sio-iosched.c android/kernel/block/sio-iosched.c
cp AoiCore+_EXT/block/sioplus-iosched.c android/kernel/block/sioplus-iosched.c
cp AoiCore+_EXT/block/tripndroid-iosched.c android/kernel/block/tripndroid-iosched.c
cp AoiCore+_EXT/block/zen-iosched.c android/kernel/block/zen-iosched.c
rm android/kernel/drivers/cpufreq/Kconfig
cp AoiCore+_EXT/drivers/cpufreq/Kconfig android/kernel/drivers/cpufreq/Kconfig
rm android/kernel/drivers/cpufreq/Makefile
cp AoiCore+_EXT/drivers/cpufreq/Makefile android/kernel/drivers/cpufreq/Makefile
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_HYPER.c android/kernel/drivers/cpufreq/cpufreq_HYPER.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_intellidemand.c android/kernel/drivers/cpufreq/cpufreq_intellidemand.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_intellimm.c android/kernel/drivers/cpufreq/cpufreq_intellimm.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_lionheart.c android/kernel/drivers/cpufreq/cpufreq_lionheart.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_lulzactive.c android/kernel/drivers/cpufreq/cpufreq_lulzactive.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_smartass2.c android/kernel/drivers/cpufreq/cpufreq_smartass2.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_savagedzen.c android/kernel/drivers/cpufreq/cpufreq_savagedzen.c
rm android/kernel/drivers/crypto/msm/qcedev.c
cp AoiCore+_EXT/drivers/crypto/msm/qcedev.c android/kernel/drivers/crypto/msm/qcedev.c
rm android/kernel/drivers/thermal/Kconfig
cp AoiCore+_EXT/drivers/thermal/Kconfig android/kernel/drivers/thermal/Kconfig
rm android/kernel/drivers/usb/otg/msm_otg.c
cp AoiCore+_EXT/drivers/usb/otg/msm_otg.c android/kernel/drivers/usb/otg/msm_otg.c
cp AoiCore+_EXT/include/linux/compiler-gcc5.h android/kernel/include/linux/compiler-gcc5.h
rm android/kernel/include/linux/cpufreq.h
cp AoiCore+_EXT/include/linux/cpufreq.h android/kernel/include/linux/cpufreq.h
cp AoiCore+_EXT/include/linux/fastchg.h android/kernel/include/linux/fastchg.h
rm android/kernel/kernel/sched/features.h
cp AoiCore+_EXT/kernel/sched/features.h android/kernel/kernel/sched/features.h
cd android/kernel

echo "
###Running GCC Toolchains 5.3.1 (UBERTC Toolchains)"

export CT_ARCH_ARCH=""
export CT_ARCH_CPU="cortex-a7"
export CT_ARCH_TUNE="cortex-a7"
export CT_ARCH_FPU="neon-vfpv4"
export CT_ARCH_FLOAT_HW=y
export CT_ARCH_FLOAT="hard"
export CT_ARCH_SUPPORT_SOFTFP=y
export CT_ARCH_ARM_MODE="arm"
export CT_ARCH_ARM_MODE_ARM=y
export ARCH=arm
export CROSS_COMPILE=/home/nicklas/UBERTC-5.3.0/bin/arm-linux-androideabi-

echo "
###Building zImage"

echo "
###Compiler process is written on compileLog for simple interfaces"

make ARCH=arm cyanogenmod_nicki_defconfig
make ARCH=arm CROSS_COMPILE=/home/nicklas/UBERTC-5.3.0/bin/arm-linux-androideabi- > compileLog

echo "
##Creating Modules kernel"

mkdir modules
cp arch/arm/boot/zImage modules
find . -name "*.ko" -exec cp {} modules \;

echo "
## Extracting AoiCore+"

cd /home/nicklas
mkdir AoiCore+_ouput
mv android/kernel/modules AoiCore+_output

echo "##Cleaning Build"
cd android/kernel
make clean && make mrproper

echo "##Creating boot.img"
cd /home/nicklas/AoiCore+_EXT/AIK-Linux
./unpackimg.sh
rm split_img/boot.img-zImage
cd /home/nicklas/AoiCore+_output
cp zImage /home/nicklas/AoiCore+_EXT/AIK-Linux/split_img/boot.img-zImage
cd /home/nicklas/AoiCore+_EXT/AIK-Linux
./repackimg.sh
mv image-new.img /home/nicklas/AoiCore+_EXT/boot.img

echo "##Cleaning old boot.img"
cd /home/nicklas/AoiCore+_EXT/AIK-Linux
./cleanup.sh

echo "##Done"

echo "##Creating AoiCore+.zip"
rm /home/nicklas/AoiCore+_output/zImage
cd /home/nicklas/AoiCore+_EXT
./AoiCore+_Builder.sh

echo "Script Complete Successfuly"
echo "Nicklas Van Dam @ XDA"
