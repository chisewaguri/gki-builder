#!/usr/bin/env bash

# Kernel name
KERNEL_NAME="android12-9-00064-gea4a6f067d3f-ab1296991"

# GKI Version
GKI_VERSION="android12-5.10"

# Build variables
export KBUILD_BUILD_USER="build-user"
export KBUILD_BUILD_HOST="build_host"
export KBUILD_BUILD_TIMESTAMP="Fri Jan 24 18:48:47 UTC 2025"

# AnyKernel variables
ANYKERNEL_REPO="https://github.com/hazepynut/anykernel"
ANYKERNEL_BRANCH="gki"

# Kernel
KERNEL_REPO="https://github.com/pzqqt/android_kernel_xiaomi_marble"
KERNEL_BRANCH="melt-rebase"
KERNEL_DEFCONFIG="marble_defconfig"
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
