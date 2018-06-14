#!/bin/sh
URL1="https://github.com/Harpia-development/android_vendor_du"
URL2="https://github.com/DirtyUnicorns/android_vendor_du"
VENDOR="android_vendor_du"
URL3="https://github.com/Harpia-development/android_frameworks_av"
URL4="https://github.com/DirtyUnicorns/android_frameworks_av"
AV="android_frameworks_av"
URL5="https://github.com/Harpia-development/android_device_qcom_common"
URL6="https://github.com/DirtyUnicorns/android_device_qcom_common"
COMMON="android_device_qcom_common"

# Vendor
rm -rf $VENDOR # To avoid folder conflicts
echo "Cloning $URL1 to $VENDOR"
git clone $URL1 --depth 100
cd $VENDOR
echo "Fetching $URL2"
git fetch $URL2
echo "Go to $URL2 and pick commits manually"
echo "Then git push origin o8x"
cd ../

# Common
rm -rf $COMMON # To avoid folder conflicts
echo "Cloning to $URL5 to $COMMON"
git clone $URL5 -b $branch --depth 100
cd $COMMON
echo "Fetching and merging $URL6"
git pull $URL6 $branch --no-edit
echo "Pushing to $URL5"
git push origin $branch
echo "Done"
cd ../

# Cleanup
rm -rf $COMMON
echo "All repos upstreamed"
