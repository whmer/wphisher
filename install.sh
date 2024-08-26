#!/bin/bash

# Hello 👋

pkg update && pkg upgrade
pkg install which
pkg install php
pkg install nodejs -y
pkg install nodejs-lts -y
pkg install git -y
pkg install ffmpeg -y
npm install -g cfonts

echo "[-] Concluding"

chmod +x sam.sh
bash sam.sh