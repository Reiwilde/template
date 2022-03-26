#!/bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

USERNAME=${1}
EMAIL=${2}
NAME=${3}
PGP_KEY=${4}
GPG_SIGN=$([ -z $PGP_KEY ] && echo false || echo true)

apt-get -y install --no-install-recommends git
apt-get -y install --no-install-recommends gnupg
apt-get -y install --no-install-recommends less
apt-get -y install --no-install-recommends ssh
apt-get -y install --no-install-recommends vim

su $USERNAME -s /bin/bash -c "\
  git config --global user.email '$EMAIL' \
  && git config --global user.name '$NAME' \
  && git config --global commit.gpgsign '$GPG_SIGN' \
  && git config --global user.signingkey '$PGP_KEY'"
