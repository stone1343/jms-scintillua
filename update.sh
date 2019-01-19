#!/usr/bin/env bash

sudo cp scintillua/startup.lua /usr/share/scite
sudo cp -r scintillua/lexers /usr/share/scite
sudo cp linux/SciTEGlobal.properties /usr/share/scite
cp linux/SciTEUser.properties $HOME/.SciTEUser.properties
