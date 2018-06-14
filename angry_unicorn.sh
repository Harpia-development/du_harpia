A="du_harpia"
B="Avoid-hidl-duplicates.patch"
C="Camera-allow-camera-to-use-power-key-as-shutter.patch"
D="angry_unicorn.sh"
E="harpia.xml"
F="magic.sh"
G="patch.sh"
H="README.md"
I="up.sh"
URL="https://github.com/Harpia-development/du_harpia"

# Clean up existing files if present

rm -rf  "$A"
rm "$B" "$C" "$D" "$E" "$F" "$G" "$H" "$I"

echo "Fetching random shit"
git clone $URL
cd du_harpia
cp * ../
cd ../
echo "Time for some magic"
bash magic.sh

