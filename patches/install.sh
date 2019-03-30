#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/lenovo/k5fpr/patches/android_system_core.patch
cd ../..
cd frameworks/native
patch -p1 < ../../device/lenovo/k5fpr/patches/android_frameworks_native.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/lenovo/k5fpr/patches/android_frameworks_base.patch
cd ../..
cd frameworks/opt/telephony
patch -p1 <../../../device/lenovo/k5fpr/patches/android_frameworks_opt_telephony.patch
cd ../../..
cd hardware/ril
patch -p1 < ../../device/lenovo/k5fpr/patches/android_hardware_ril.patch
cd ../..
cd hardware/interfaces
patch -p1 < ../../device/lenovo/k5fpr/patches/android_hardware_interfaces.patch
cd ../..

