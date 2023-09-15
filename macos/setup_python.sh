#!/usr/bin/env bash
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew install stow python-tk mas
python3 -m pip install --upgrade -user pip
python3 -m pip install --user ansible
