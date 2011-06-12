#!/bin/sh
mkdir techs
cd techs
rm -rf *
7z x ~/Downloads/sci_fi_pack.7z
cd ..
mkdir tilesets
cd tilesets
rm -rf scifi_twilight
7x x ~/Downloads/scifi_twilight.7z
cd ..
detox -s lower-only -r -v techs
detox -s lower-only -r -v tilesets
cp LICENSE techs/sci_fi_pack
cp LICENSE tilesets/scifi_twilight
git add techs tilesets
echo ===========
git status
