#!/bin/bash
cd "$(dirname $0)"
rm -f Packages.bz2
rm -f Packages.xz
dpkg-scanpackages -m . /dev/null >Packages
bzip2  Packages
dpkg-scanpackages -m . /dev/null >Packages
xz  Packages

git add --all
git commit -m "azmilaila"
