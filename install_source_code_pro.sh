# !/bin/bash

version=1.010

echo "\n* Downloading version $version of source code pro font"
rm -f SourceCodePro_FontsOnly-$version.zip
rm -rf SourceCodePro_FontsOnly-$version
wget https://github.com/downloads/adobe/source-code-pro/SourceCodePro_FontsOnly-$version.zip

echo "\n* Unziping package"
unzip SourceCodePro_FontsOnly-$version.zip
mkdir -p ~/.fonts

echo "\n* Copying fonts to ~/fonts"
cp SourceCodePro_FontsOnly-$version/OTF/*.otf ~/.fonts/

echo "\n* Updating font cache"
sudo fc-cache -f -v

echo "\n* Looking for 'Source Code Pro' in installed fonts"
fc-list | grep "Source Code Pro"

echo "\n* Now, you can use the 'Source Code Pro' fonts, ** for sublime text ** just add the lines bellow to 'Preferences > Settings':"
echo '\n  "font_face": "Source Code Pro",'
echo '  "font_size": 10'

echo "\n* Finished :)\n"
