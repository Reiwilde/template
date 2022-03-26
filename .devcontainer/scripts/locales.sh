#!/bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y install --no-install-recommends locales

localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
