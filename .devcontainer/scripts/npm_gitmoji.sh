#!/bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

USERNAME=${1}

su $USERNAME -s /bin/bash -c "\
  source /home/$USERNAME/.nvm/nvm.sh \
  && npm install --global gitmoji-cli \
  && mkdir -p /home/${USERNAME}/.config \
  && cp -r /tmp/configs/gitmoji-nodejs /home/${USERNAME}/.config"
