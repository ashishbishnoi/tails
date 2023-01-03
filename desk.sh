#!/bin/bash
cp /usr/share/applications/unsafe-browser.desktop ~/Desktop/
cp /usr/share/applications/electrum.desktop ~/Desktop/
cp ~/Persistent/Trezor-Suite-22.11.1-linux-x86_64.AppImage ~/Desktop/
cp /usr/share/applications/protonvpn.desktop ~/Desktop/
gio set ~/Desktop/protonvpn.desktop metadata::trusted true
gio set ~/Desktop/unsafe-browser.desktop metadata::trusted true
gio set ~/Desktop/electrum.desktop metadata::trusted true
chmod +x ~/Desktop/*.desktop
chmod +x ~/Desktop/*.AppImage
