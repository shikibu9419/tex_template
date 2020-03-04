#!/usr/bin/env bash

rootfile=$1

find sections -type f -name '*.tex' -print0 | \
  xargs -0 sed -i -e 's/、/，/g' -e 's/。/．/g'
sed -i -e 's/、/，/g' -e 's/。/．/g' $rootfile
