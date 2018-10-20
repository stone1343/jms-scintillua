#!/usr/bin/env bash

# Pre-req: /mnt/samba

# Install pre-reqs, Raspbian Stretch and Ubuntu both use GTK3
#sudo apt install build-essential libgtk-3-dev git

# SciTE, Scintillua and LPeg source in ~/samba/new-computer
unzip scintillua_3.7.5-1.zip
cd scintillua_3.7.5-1/
tar xf ../scite375.tgz
tar xf ../lpeg-1.0.1.tar.gz
# Get ready...
mkdir -p lua/src/lib
cp scite/lua/include/*.h lua/src
cp scite/lua/src/*.h lua/src
cp scite/lua/src/*.c lua/src
cp scite/lua/src/lib/*.c lua/src
cp lpeg-1.0.1/* lua/src/lib
# Starting point is the scintillua directory
# (to start again, make clean GTK3=GTK3)
cd scintilla/gtk
make GTK3=GTK3
cd ../../scite/gtk
make GTK3=GTK3
sudo make install GTK3=GTK3
cd ../..
make GTK3=GTK3
rm lexers/LexLPeg.dll
sudo cp -r lexers /usr/share/scite
cd ..

sudo cp scintillua/startup.lua /usr/share/scite
sudo cp -r scintillua/lexers /usr/share/scite
sudo cp linux/SciTEGlobal.properties /usr/share/scite
cp linux/SciTEUser.properties $HOME/.SciTEUser.properties

sudo chown -R $USER:$USER /usr/share/scite/
