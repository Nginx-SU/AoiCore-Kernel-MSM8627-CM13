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
rm android/kernel/arch/arm/boot/compressed/Makefile
cp AoiCore+_EXT/arch/arm/boot/compressed/Makefile android/kernel/arch/arm/boot/compressed/Makefile
rm android/kernel/arch/arm/configs/cyanogenmod_nicki_defconfig
cp AoiCore+_EXT/arch/arm/configs/cyanogenmod_nicki_defconfig android/kernel/arch/arm/configs/cyanogenmod_nicki_defconfig
rm android/kernel/arch/arm/include/asm/xor.h
cp AoiCore+_EXT/arch/arm/include/asm/xor.h android/kernel/arch/arm/include/asm/xor.h
cp AoiCore+_EXT/arch/arm/include/asm/rwsem.h android/kernel/arch/arm/include/asm/rwsem.h
rm android/kernel/arch/arm/kernel/Makefile
cp AoiCore+_EXT/arch/arm/kernel/Makefile android/kernel/arch/arm/kernel/Makefile
cp AoiCore+_EXT/arch/arm/kernel/auto_hotplug.c android/kernel/arch/arm/kernel/auto_hotplug.c
cp AoiCore+_EXT/arch/arm/kernel/autosmp.c android/kernel/arch/arm/kernel/autosmp.c
rm android/kernel/arch/arm/kernel/head-nommu.S
cp AoiCore+_EXT/arch/arm/kernel/head-nommu.S android/kernel/arch/arm/kernel/head-nommu.S
rm android/kernel/arch/arm/kernel/head.S
cp AoiCore+_EXT/arch/arm/kernel/head.S android/kernel/arch/arm/kernel/head.S
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
rm android/kernel/arch/arm/mach-msm/acpuclock-krait.c
cp AoiCore+_EXT/arch/arm/mach-msm/acpuclock-krait.c android/kernel/arch/arm/mach-msm/acpuclock-krait.c
cp AoiCore+_EXT/arch/arm/mach-msm/alucard_hotplug.c android/kernel/arch/arm/mach-msm/alucard_hotplug.c
cp AoiCore+_EXT/arch/arm/mach-msm/cpufreq.c android/kernel/arch/arm/mach-msm/cpufreq.c
rm android/kernel/arch/arm/mach-msm/dma_test.c
cp AoiCore+_EXT/arch/arm/mach-msm/dma_test.c android/kernel/arch/arm/mach-msm/dma_test.c
cp AoiCore+_EXT/arch/arm/mach-msm/fastchg.c android/kernel/arch/arm/mach-msm/fastchg.c
rm android/kernel/arch/arm/mach-msm/Kconfig
cp AoiCore+_EXT/arch/arm/mach-msm/Kconfig android/kernel/arch/arm/mach-msm/Kconfig
rm android/kernel/arch/arm/mach-msm/Makefile
cp AoiCore+_EXT/arch/arm/mach-msm/Makefile android/kernel/arch/arm/mach-msm/Makefile
rm android/kernel/arch/arm/mach-msm/include/mach/kgsl.h
cp AoiCore+_EXT/arch/arm/mach-msm/include/mach/kgsl.h android/kernel/arch/arm/mach-msm/include/mach/kgsl.h
rm android/kernel/block/Kconfig.iosched
cp AoiCore+_EXT/block/Kconfig.iosched android/kernel/block/Kconfig.iosched
rm android/kernel/block/Makefile
cp AoiCore+_EXT/block/Makefile android/kernel/block/Makefile
cp AoiCore+_EXT/block/fifo-iosched.c android/kernel/block/fifo-iosched.c
cp AoiCore+_EXT/block/fiops-iosched.c android/kernel/block/fiops-iosched.c
cp AoiCore+_EXT/block/sio-iosched.c android/kernel/block/sio-iosched.c
cp AoiCore+_EXT/block/sioplus-iosched.c android/kernel/block/sioplus-iosched.c
cp AoiCore+_EXT/block/tripndroid-iosched.c android/kernel/block/tripndroid-iosched.c
cp AoiCore+_EXT/block/vr-iosched.c android/kernel/block/vr-iosched.c
cp AoiCore+_EXT/block/zen-iosched.c android/kernel/block/zen-iosched.c
rm android/kernel/drivers/cpufreq/Kconfig
cp AoiCore+_EXT/drivers/cpufreq/Kconfig android/kernel/drivers/cpufreq/Kconfig
rm android/kernel/drivers/cpufreq/cpufreq.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq.c android/kernel/drivers/cpufreq/cpufreq.c
rm android/kernel/drivers/cpufreq/Makefile
cp AoiCore+_EXT/drivers/cpufreq/Makefile android/kernel/drivers/cpufreq/Makefile
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_adaptive.c android/kernel/drivers/cpufreq/cpufreq_adaptive.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_alucard.c android/kernel/drivers/cpufreq/cpufreq_alucard.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_HYPER.c android/kernel/drivers/cpufreq/cpufreq_HYPER.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_elementalx.c android/kernel/drivers/cpufreq/cpufreq_elementalx.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_intellidemand.c android/kernel/drivers/cpufreq/cpufreq_intellidemand.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_impulse.c android/kernel/drivers/cpufreq/cpufreq_impulse.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_lionheart.c android/kernel/drivers/cpufreq/cpufreq_lionheart.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_lulzactive.c android/kernel/drivers/cpufreq/cpufreq_lulzactive.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_smartass2.c android/kernel/drivers/cpufreq/cpufreq_smartass2.c
cp AoiCore+_EXT/drivers/cpufreq/cpufreq_savagedzen.c android/kernel/drivers/cpufreq/cpufreq_savagedzen.c
rm android/kernel/drivers/crypto/msm/qcedev.c
cp AoiCore+_EXT/drivers/crypto/msm/qcedev.c android/kernel/drivers/crypto/msm/qcedev.c
rm android/kernel/drivers/gpu/msm/Kconfig
cp AoiCore+_EXT/drivers/gpu/msm/Kconfig android/kernel/drivers/gpu/msm/Kconfig
rm android/kernel/drivers/gpu/msm/kgsl_pwrctrl.c
cp AoiCore+_EXT/drivers/gpu/msm/kgsl_pwrctrl.c android/kernel/drivers/gpu/msm/kgsl_pwrctrl.c
rm android/kernel/drivers/gpu/msm/kgsl_pwrscale_trustzone.c
cp AoiCore+_EXT/drivers/gpu/msm/kgsl_pwrscale_trustzone.c android/kernel/drivers/gpu/msm/kgsl_pwrscale_trustzone.c
rm android/kernel/drivers/thermal/Kconfig
cp AoiCore+_EXT/drivers/thermal/Kconfig android/kernel/drivers/thermal/Kconfig
rm android/kernel/drivers/staging/android/lowmemorykiller.c
cp AoiCore+_EXT/drivers/staging/android/lowmemorykiller.c android/kernel/drivers/staging/android/lowmemorykiller.c
rm android/kernel/drivers/usb/otg/msm_otg.c
cp AoiCore+_EXT/drivers/usb/otg/msm_otg.c android/kernel/drivers/usb/otg/msm_otg.c
rm android/kernel/drivers/video/cfbimgblt.c
cp AoiCore+_EXT/drivers/video/cfbimgblt.c android/kernel/drivers/video/cfbimgblt.c
rm android/kernel/drivers/video/cfbfillrect.c
cp AoiCore+_EXT/drivers/video/cfbfillrect.c android/kernel/drivers/video/cfbfillrect.c
rm android/kernel/fs/compat_ioctl.c
cp AoiCore+_EXT/fs/compat_ioctl.c android/kernel/fs/compat_ioctl.c
rm android/kernel/include/asm-generic/ioctls.h
cp AoiCore+_EXT/include/asm-generic/ioctls.h android/kernel/include/asm-generic/ioctls.h
cp AoiCore+_EXT/include/linux/compiler-gcc5.h android/kernel/include/linux/compiler-gcc5.h
rm android/kernel/include/linux/cpufreq.h
cp AoiCore+_EXT/include/linux/cpufreq.h android/kernel/include/linux/cpufreq.h
cp AoiCore+_EXT/include/linux/fastchg.h android/kernel/include/linux/fastchg.h
cp AoiCore+_EXT/include/linux/quickwakeup.h android/kernel/include/linux/quickwakeup.h
rm android/kernel/include/trace/events/cpufreq_interactive.h
cp AoiCore+_EXT/include/trace/events/cpufreq_interactive.h android/kernel/include/trace/events/cpufreq_interactive.h
rm android/kernel/kernel/sched/features.h
cp AoiCore+_EXT/kernel/sched/features.h android/kernel/kernel/sched/features.h
rm android/kernel/kernel/power/Kconfig
cp AoiCore+_EXT/kernel/power/Kconfig android/kernel/kernel/power/Kconfig
rm android/kernel/kernel/power/Makefile
cp AoiCore+_EXT/kernel/power/Makefile android/kernel/kernel/power/Makefile
cp AoiCore+_EXT/kernel/power/quickwakeup.c android/kernel/kernel/power/quickwakeup.c
rm android/kernel/mm/ksm.c
cp AoiCore+_EXT/mm/ksm.c android/kernel/mm/ksm.c
cd android/kernel
echo "
###Running GCC Toolchains 5.4.0 (Crosstool-NG Toolchains)"

export ARCH=arm
export CROSS_COMPILE=/home/nicklas/crosstool-toolchains-5.4.X/bin/arm-unknown-linux-gnueabihf-

echo "
###Building Kernel"

echo "
###Compile kernel process will write on log, for simple interface"

make ARCH=arm cyanogenmod_nicki_defconfig
make ARCH=arm CROSS_COMPILE=/home/nicklas/crosstool-toolchains-5.4.X/bin/arm-unknown-linux-gnueabihf- > compileLog

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

echo "##Creating AoiCore+.zip"
cd /home/nicklas/AoiCore+_EXT
./AoiCore+_Builder.sh

echo "Script Complete Successfuly"
echo "Nicklas Van Dam @ XDA"
echo "AoiCore+ Kernel ready to flash :D"
