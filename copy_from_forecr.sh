#!/bin/bash

FORECRDIR=/home/auv/jetpack/kernels/forecr_xavier_kernel


# Get the files that have been eddi
dts="hardware/nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-dsboard-nx2-0000.dts
hardware/nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-dsboard-nx2-0000-rev121.dts"

for f in $dts; do
    cp ${FORECRDIR}/${f} ${f};
done

cp ${FORECRDIR}/kernel/kernel-5.10/arch/arm64/configs/dsboard_nx2_defconfig kernel/kernel-5.10/arch/arm64/configs/dsboard_nx2_defconfig
