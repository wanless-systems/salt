#!/bin/sh

# (c)2018 Wanless Systems Ltd.
# Author: Brian Sidebotham <brian@wanless.systems>

scriptdir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

if [ "$(id -u)" -ne "0" ]; then
  echo "This script should be run as root" >&2
  exit 1
fi

cd ${scriptdir}/../ && pip install --upgrade .
