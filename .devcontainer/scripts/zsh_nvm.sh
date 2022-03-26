#!/bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

USERNAME=${1}

su $USERNAME -s /bin/bash -c "sed -i 's/\(^plugins=([^)]*\)/\1 nvm/' /home/$USERNAME/.zshrc"
