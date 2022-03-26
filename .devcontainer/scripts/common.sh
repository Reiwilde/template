#!/bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

USERNAME=${1}
USER_UID=${2}
USER_GID=${3}

apt-get -y install --no-install-recommends ca-certificates
apt-get -y install --no-install-recommends man

echo root:root | chpasswd
groupadd --gid $USER_GID $USERNAME
useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME
