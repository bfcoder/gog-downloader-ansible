#!/usr/bin/env bash

exec >> /var/log/gogdownloader.log
exec 2>&1

set -o nounset
set -o errexit

cd {{ mnt_dir }}/gog/ || exit

./GOG.sh --download --include all --save-serials
