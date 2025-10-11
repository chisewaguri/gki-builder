#!/usr/bin/env bash

# Kernel name
KERNEL_NAME="gki-rama"

# GKI Version
GKI_VERSION="android14-6.1"

# Build variables
# export TZ="Asia/Makassar"
# export KBUILD_BUILD_USER="eraselk"
export KBUILD_BUILD_HOST="$KERNEL_NAME"
export KBUILD_BUILD_TIMESTAMP=$(date)

# AnyKernel variables
ANYKERNEL_REPO="https://github.com/hazepynut/anykernel"
ANYKERNEL_BRANCH="gki"

# Kernel
KERNEL_REPO="https://github.com/ramabondanp/android_kernel_common-6.1"
KERNEL_BRANCH="android14-6.1"
KERNEL_DEFCONFIG="defconfig"
DEFCONFIG_FILE="$workdir/common/arch/arm64/configs/$KERNEL_DEFCONFIG"

# Defconfigs would be merged in the compiling processes
DEFCONFIGS_EXAMPLE="
vendor/xiaomi.config
vendor/gold.config
"
DEFCONFIGS="

" # Leave this empty if you don't need to merge any configs

# -- KernelSU-related config --
# revert susfs to specified commit
SUSFS_COMMIT="" # empty to use the latest

# Releases repository
GKI_RELEASES_REPO="https://github.com/hazepynut/quartix-releases"

# AOSP Clang
USE_AOSP_CLANG="true"
AOSP_CLANG_SOURCE="r547379" # Should be version number or direct link to clang tarball

# Custom clang
USE_CUSTOM_CLANG="false"
CUSTOM_CLANG_SOURCE="https://github.com/Rv-Project/RvClang/releases/download/20.1.0/RvClang-20.1.0-bolt-pgo-full_lto.tar.gz"
CUSTOM_CLANG_BRANCH=""

# Zip name
BUILD_DATE=$(date -d "$KBUILD_BUILD_TIMESTAMP" +"%Y-%m-%d-%H%M")
ZIP_NAME="$KERNEL_NAME-KVER-VARIANT.zip"
# Note: KVER and VARIANT are placeholder and they will be changed in the build.sh script.
