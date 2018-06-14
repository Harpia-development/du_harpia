#!/bin/sh

# export some variables
MANIFESTURL="https://github.com/Harpia-development/du_harpia/raw/master/harpia.xml"
PATCH1="https://github.com/Harpia-development/du_harpia/raw/master/Camera-allow-camera-to-use-power-key-as-shutter.patch"
PATCH2="https://github.com/Harpia-development/du_harpia/raw/master/Avoid-hidl-duplicates.patch"
file=".repo/local_manifests/dirty.xml"
# create local manifest
if [ -e "$file" ]; then
   rm "$file"
   curl --create-dirs -L -o .repo/local_manifests/dirty.xml -O -L $MANIFESTURL
   echo "Local manifest created"
else
   curl --create-dirs -L -o .repo/local_manifests/dirty.xml -O -L $MANIFESTURL
   echo "Local manifest created"
fi

# download patch
wget -O "Camera-allow-camera-to-use-power-key-as-shutter.patch" $PATCH1
echo "Successfully downloaded $PATCH1"

wget -O "Avoid-hidl-duplicates.patch" $PATCH2
echo "Successfully downloaded $PATCH2"
