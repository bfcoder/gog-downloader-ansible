#!/usr/bin/env bash

exec >> /var/log/gogdownloader.log
exec 2>&1

set -o nounset
set -o errexit

cd {{ mnt_dir }}/gog/ || exit

# Inspired by https://github.com/TheFrenchGhosty/TheFrenchGhostys-GOG-Archivist-Scripts
lgogdownloader --download \
  --include all \
  --ignore-dlc-count \
  --no-platform-detection \
  --platform all \
  --language en \
  --save-changelogs \
  --save-serials \
  --xml-directory 'aaaMetadata'
