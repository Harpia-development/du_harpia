#!/bin/sh

# export some variables
BASEDIR=$(pwd)
PATCH1="../../Camera-allow-camera-to-use-power-key-as-shutter.patch"
PATCH2="../../Avoid-hidl-duplicates.patch"

# Patch for snap camera
cd $BASEDIR/frameworks/base
git am -3 $PATCH1
cd $BASEDIR

# Patch for avoiding duplicates in system hidl
cd $BASEDIR/system/libhidl
git am -3 $PATCH2
cd $BASEDIR