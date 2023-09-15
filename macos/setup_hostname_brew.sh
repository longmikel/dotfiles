#!/usr/bin/env bash
if [ -z "$1" ]; then
    echo Usage: $0 {MAC_HOSTNAME}
    exit 1
fi

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

MAC_HOSTNAME=$1
echo '---- Config Hostname'
sudo scutil --set HostName $MAC_HOSTNAME
sudo scutil --set LocalHostName $MAC_HOSTNAME
sudo scutil --set ComputerName $MAC_HOSTNAME
dscacheutil -flushcache

echo '---- Disable Policy'
sudo spctl --master-disable

echo '---- Install Homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
