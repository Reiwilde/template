#!/bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

USERNAME=${1}

apt-get -y install --no-install-recommends build-essential
apt-get -y install --no-install-recommends curl
apt-get -y install --no-install-recommends git
apt-get -y install --no-install-recommends python3

su $USERNAME -s /bin/bash -c "\
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash \
  && source /home/$USERNAME/.nvm/nvm.sh \
  && nvm install lts/* \
  && npm install --global npm@latest yarn@latest \
  && nvm alias default lts/*"
