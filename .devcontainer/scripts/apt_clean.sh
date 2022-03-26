#!/bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

apt-get clean
rm -rf /var/lib/apt/lists/*
