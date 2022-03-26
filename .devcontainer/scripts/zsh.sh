#!/bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

USERNAME=${1}

apt-get -y install --no-install-recommends curl
apt-get -y install --no-install-recommends git
apt-get -y install --no-install-recommends zsh

usermod --shell /bin/zsh ${USERNAME}

su $USERNAME -c "curl -o- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh"
