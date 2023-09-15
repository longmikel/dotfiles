#!/usr/bin/env bash
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

python3 -m ansible playbook playbook.yml --tags brew
