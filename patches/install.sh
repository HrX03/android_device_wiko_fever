#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/wiko/fever/patches/android_system_core.patch
cd ../..
cd frameworks/native
patch -p1 < ../../device/wiko/fever/patches/android_frameworks_native.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/wiko/fever/patches/android_frameworks_base.patch
cd ../../..
cd hardware/ril
patch -p1 < ../../device/wiko/fever/patches/android_hardware_ril.patch
cd ../..
cd hardware/interfaces
patch -p1 < ../../device/wiko/fever/patches/android_hardware_interfaces.patch
cd ../..

