#!/bin/sh
mkdir techs &2> /dev/null
cd techs
rm -rf *
7z x ~/Downloads/sci_fi_pack.7z
cd ..
detox -s lower -r -v techs
cp LICENSE techs/sci_fi_pack
