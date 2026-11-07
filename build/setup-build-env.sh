#!/usr/bin/env bash
# Prepares a Kali/Debian VM for building the ISO. Run as a normal user with sudo.
set -euo pipefail
sudo apt-get update
sudo apt-get install -y git live-build simple-cdd cdebootstrap curl devscripts
if [ ! -d live-build-config ]; then
  git clone https://gitlab.com/kalilinux/build-scripts/live-build-config.git
fi
echo "Build env ready. Next: ./build/build-iso.sh forensics"
